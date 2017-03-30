#language:pt
@geral
Funcionalidade: Cadastro e edição de anotações
# - Criar uma anotação e validar a criação da mesma
# - Após criar uma anotação, editar as informações dela

@criar_not
Cenário: Criar uma new notebook 
Quando que eu clique no botão + para cadastar um new notebook
E preencho o campo name
E e confirmo a criação de um new notebook
Entao a será apresentada a new notebook criada

@criar_anotacao
Cenário: Criar uma anotação e validar a criação da mesma
Quando que eu clique na opção Close drawer
E seleciono uma new notebook para criação de anotação
E clico no botão + para cadastar uma anotação
E preencho os campos com datos validos para criar uma anotação
E confirmo o cadastro de uma anotação
Entao a será apresentada a anotação criada

@cadastronew
@criaranotacao
@editar_anotacao
Cenário: Editar uma anotação
Quando clico na anotação para edição
E altero as informações da anotação
E confirmo a edição de uma anotação
Entao a será apresentada a anotação editada
