# Gerenciador de Tarefas em Haskell

O código desenvolvido para o gerenciador de tarefas em Haskell foi estruturado para fornecer uma solução funcional e modular para o gerenciamento de tarefas básicas.

## Definição do Tipo de Dado

O tipo de dado `Tarefa` é definido como uma estrutura simples que encapsula a descrição de uma tarefa em uma string. Esta definição é essencial para criar uma representação clara e consistente das tarefas dentro do programa. O tipo `Tarefa` é derivado da classe `Show`, o que permite que suas instâncias sejam convertidas para uma representação textual, facilitando a exibição das tarefas para o usuário.

## Função Principal

A função `main` é o ponto de entrada do programa. Ela começa exibindo uma mensagem de boas-vindas ao usuário e chama a função `menu` com uma lista inicial vazia de tarefas. Isso estabelece o contexto para a interação inicial com o usuário e configura o loop principal do programa, onde o menu será exibido e as escolhas do usuário serão processadas. Para o código ser iniciado, deve ser digitado:

```bash
ghci> :load Lista_tarefas.hs
ghci> main
