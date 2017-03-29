#language: pt

@geral
Funcionalidade: valide exibição de texto de aba Quem Somos do site Inmetrics

# A partir do site da Inmetrics (www.inmetrics.com.br) valide o texto: ”mais de 15 anos de atuação” dentro da página ”Quem Somos”.

@validar_texto
Cenario: Validar texto 
Dado que eu acesse a pagina da inmetrics
Quando clico no link Quem Somos
Entao é apresentado o seguinte texto
"""
MAIS DE 15 ANOS DE ATUAÇÃO
"""