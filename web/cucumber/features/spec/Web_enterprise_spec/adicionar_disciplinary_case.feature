#language: pt

@geral
Funcionalidade: Adicione um Disciplinary Case no setor Discipline

# Funcionalidade 2:
# Acessar o site https://enterprise-demo.orangehrmlive.com e efetuar o login utilizando as
# credenciais do funcionário Peter. Adicione um “Disciplinary Case” no setor “Discipline” e
# valide se concluiu com sucesso a nota.
# Desejável: Criar um cenário de login negativo (insucesso).
# Requerido: Utilizar o conceito de Page-Objects com a gem SitePrism e Gemfile. 

@add_discipline
Cenario: Adicione um Disciplinary Case
Dado que eu tenho um usuário com o seguintes atributos
| Username     | Password    |
| peter.mac    | peter.mac   |
Quando faço login
E acesso o setor de "Discipline"
E verifico se é apresentado o texto 
"""
Disciplinary Cases
"""
E clico no botão Add Disciplinary Cases
E preencho os campos com informações validas
E clico no botão para salvar
Então é concluida com sucesso a nota


