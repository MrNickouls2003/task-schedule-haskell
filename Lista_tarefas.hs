module GerenciadorDeTarefas where

-- Definindo o tipo de dado Tarefa
data Tarefa = Tarefa String
    deriving (Show)

-- Função principal que inicia o programa
main :: IO ()
main = do
    putStrLn "Bem-vindo ao gerenciador de tarefas!"
    menu []

-- Função que exibe o menu e solicita a escolha do usuário
menu :: [Tarefa] -> IO ()
menu tarefas = do
    putStrLn "\n======= Lista de Tarefas ======="
    putStrLn "1. Adicionar uma nova tarefa"
    putStrLn "2. Remover uma tarefa"
    putStrLn "3. Exibir a lista de tarefas"
    putStrLn "4. Sair"
    putStr "Escolha uma opção: "
    opcao <- getLine
    case opcao of
        "1" -> do
            novasTarefas <- adicionarTarefa tarefas
            menu novasTarefas
        "2" -> do
            novasTarefas <- removerTarefa tarefas
            menu novasTarefas
        "3" -> do
            exibirTarefas tarefas
            menu tarefas
        "4" -> putStrLn "Saindo do programa..."
        _   -> do
            putStrLn "Opção inválida, tente novamente."
            menu tarefas

-- Função para adicionar uma nova tarefa
adicionarTarefa :: [Tarefa] -> IO [Tarefa]
adicionarTarefa tarefas = do
    putStr "Digite a nova tarefa: "
    descricao <- getLine
    if descricao == ""
        then do
            putStrLn "A descrição da tarefa não pode ser vazia."
            return tarefas
        else do
            let novaTarefa = Tarefa descricao
            putStrLn "Tarefa adicionada!"
            return (tarefas ++ [novaTarefa])

-- Função para remover uma tarefa existente
removerTarefa :: [Tarefa] -> IO [Tarefa]
removerTarefa tarefas = do
    if null tarefas
        then do
            putStrLn "Não há tarefas para remover."
            return tarefas
        else do
            putStrLn "Digite o número da tarefa que deseja remover:"
            exibirTarefas tarefas
            putStr "Número: "
            entrada <- getLine
            let indice = read entrada - 1
            if indice >= 0 && indice < length tarefas
                then do
                    let novasTarefas = take indice tarefas ++ drop (indice + 1) tarefas
                    putStrLn "Tarefa removida!"
                    return novasTarefas
                else do
                    putStrLn "Número inválido."
                    return tarefas

-- Função para exibir a lista de tarefas
exibirTarefas :: [Tarefa] -> IO ()
exibirTarefas [] = putStrLn "Nenhuma tarefa encontrada."
exibirTarefas tarefas = putStrLn "Lista de Tarefas:" >> exibirComNumeros 1 tarefas

exibirComNumeros :: Int -> [Tarefa] -> IO ()
exibirComNumeros _ [] = return ()
exibirComNumeros n (Tarefa descricao : xs) = do
    putStrLn (show n ++ ". " ++ descricao)
    exibirComNumeros (n + 1) xs
