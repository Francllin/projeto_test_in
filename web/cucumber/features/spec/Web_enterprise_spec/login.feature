#language: pt

@geral
Funcionalidade: Efetuar o login

# Funcionalidade 2:
# Acessar o site https://enterprise-demo.orangehrmlive.com e efetuar o login utilizando as
# credenciais do funcionário Peter. Adicione um “Disciplinary Case” no setor “Discipline” e
# valide se concluiu com sucesso a nota.
# Desejável: Criar um cenário de login negativo (insucesso).
# Requerido: Utilizar o conceito de Page-Objects com a gem SitePrism e Gemfile. 

@login
Cenario: Usuário acessa sistema com sucesso
Dado que eu tenho um usuário com o seguintes atributos
| Username     | Password    |
| peter.mac    | peter.mac   |
Quando faço login
Então vejo o usuário logado

@login_negativo
Cenario: Erro para acessar o sistema
Dado que eu tenho um usuário com o seguintes atributos
| Username     | Password    |
| pjkj.dfrf    | 123456      |
Quando faço login com um usuário invalido
Então não deverá exibir o tela logada e apresentará a mensagem
"""
Invalid credentials
"""