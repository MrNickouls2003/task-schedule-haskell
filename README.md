# Gerenciador de Tarefas em Haskell

##Português

O código desenvolvido para o gerenciador de tarefas em Haskell foi estruturado para fornecer uma solução funcional e modular para o gerenciamento de tarefas básicas.

## Definição do Tipo de Dado

O tipo de dado `Tarefa` é definido como uma estrutura simples que encapsula a descrição de uma tarefa em uma string. Esta definição é essencial para criar uma representação clara e consistente das tarefas dentro do programa. O tipo `Tarefa` é derivado da classe `Show`, o que permite que suas instâncias sejam convertidas para uma representação textual, facilitando a exibição das tarefas para o usuário.

## Função Principal

A função `main` é o ponto de entrada do programa. Ela começa exibindo uma mensagem de boas-vindas ao usuário e chama a função `menu` com uma lista inicial vazia de tarefas. Isso estabelece o contexto para a interação inicial com o usuário e configura o loop principal do programa, onde o menu será exibido e as escolhas do usuário serão processadas. Para o código ser iniciado, deve ser digitado:

```bash
ghci> :load Lista_tarefas.hs
ghci> main
```

## Menu Principal

A função `menu` é o núcleo da interação com o usuário. Ela exibe um menu com quatro opções: adicionar uma nova tarefa, remover uma tarefa existente, exibir a lista de tarefas ou sair do programa. O usuário é solicitado a escolher uma opção, e a função processa essa escolha utilizando uma construção `case` para determinar qual operação deve ser realizada.

- **Adicionar Tarefa**: Se o usuário escolhe adicionar uma tarefa, a função `adicionarTarefa` é chamada. Esta função solicita ao usuário que insira uma descrição para a nova tarefa. Se a descrição não estiver vazia, uma nova instância do tipo `Tarefa` é criada e armazenada à lista existente de tarefas. Caso contrário, uma mensagem de erro é exibida e a lista de tarefas permanece inalterada.

- **Remover Tarefa**: Se a opção selecionada for remover uma tarefa, a função `removerTarefa` é utilizada. Primeiro, a função verifica se a lista de tarefas está vazia; se estiver, uma mensagem informa que não há tarefas para remover. Se a lista contiver tarefas, o programa exibe a lista atual numerada e solicita ao usuário o número da tarefa a ser removida. A tarefa é então removida com base no número fornecido, e a lista atualizada é retornada. Se o número fornecido for inválido, uma mensagem de erro é exibida e a lista permanece inalterada.

- **Exibir Tarefas**: Quando o usuário escolhe exibir as tarefas, a função `exibirTarefas` é chamada. Esta função apresenta a lista de tarefas atual. Se a lista estiver vazia, uma mensagem informa que não há tarefas disponíveis. Caso contrário, cada tarefa é exibida numerada, facilitando a referência para possíveis remoções. A numeração das tarefas é gerenciada pela função auxiliar `exibirComNumeros`, que é chamada recursivamente para exibir cada tarefa com um número sequencial.

- **Sair do Programa**: Se o usuário opta por sair, a função `menu` simplesmente exibe uma mensagem de encerramento e o programa termina.

## Estrutura e Modularidade

O programa é projetado de forma modular, com funções bem definidas para cada operação principal. A função `menu` serve como o ponto de controle, chamando as funções auxiliares conforme necessário. A recursão é utilizada para manter o menu em execução até que o usuário decida sair. Esse design modular e o uso de recursão garantem que o código seja limpo e fácil de entender, além de permitir a manutenção e expansão futura do programa.

## Manipulação de Listas e Interação com o Usuário

O código faz uso extensivo de listas para armazenar e gerenciar as tarefas. As operações sobre a lista, como adicionar e remover tarefas, são realizadas de forma funcional, mantendo a imutabilidade da lista original e retornando uma nova lista modificada. A interação com o usuário é gerenciada utilizando IO, o que permite ler entradas do usuário e exibir mensagens na tela.

## English

The task manager code developed in Haskell was structured to provide a functional and modular solution for managing basic tasks.

## Data Type Definition

The data type `Task` is defined as a simple structure that encapsulates the description of a task in a string. This definition is essential to create a clear and consistent representation of tasks within the program. The `Task` type is derived from the `Show` class, which allows its instances to be converted into a textual representation, making it easier to display tasks to the user.

## Main Function

The `main` function is the entry point of the program. It begins by displaying a welcome message to the user and calls the `menu` function with an initial empty task list. This sets the context for the initial user interaction and configures the main loop of the program, where the menu will be displayed, and the user's choices will be processed. To start the program, you need to enter:

```bash
ghci> :load Lista_tarefas.hs
ghci> main
```

## Main Menu

The `menu` function is the core of user interaction. It displays a menu with four options: add a new task, remove an existing task, display the task list, or exit the program. The user is asked to choose an option, and the function processes this choice using a `case` construct to determine which operation should be performed.

- **Add Task**: If the user chooses to add a task, the `addTask` function is called. This function asks the user to enter a description for the new task. If the description is not empty, a new instance of the `Task` type is created and stored in the existing task list. Otherwise, an error message is displayed, and the task list remains unchanged.

- **Remove Task**: If the option selected is to remove a task, the `removeTask` function is used. First, the function checks if the task list is empty; if it is, a message informs the user that there are no tasks to remove. If the list contains tasks, the program displays the current numbered list and asks the user for the number of the task to be removed. The task is then removed based on the provided number, and the updated list is returned. If the provided number is invalid, an error message is displayed, and the list remains unchanged.

- **Display Tasks**: When the user chooses to display tasks, the `displayTasks` function is called. This function presents the current task list. If the list is empty, a message informs the user that no tasks are available. Otherwise, each task is displayed with a number, making it easier to reference tasks for potential removal. Task numbering is managed by the helper function `displayWithNumbers`, which is recursively called to display each task with a sequential number.

- **Exit Program**: If the user opts to exit, the `menu` function simply displays a closing message, and the program ends.

## Structure and Modularity

The program is designed in a modular way, with well-defined functions for each main operation. The `menu` function serves as the control point, calling helper functions as needed. Recursion is used to keep the menu running until the user decides to exit. This modular design and use of recursion ensure that the code is clean and easy to understand, as well as allowing for future maintenance and expansion of the program.

## List Handling and User Interaction

The code makes extensive use of lists to store and manage tasks. Operations on the list, such as adding and removing tasks, are performed functionally, maintaining the immutability of the original list and returning a new modified list. User interaction is managed using IO, which allows reading user input and displaying messages on the screen.
