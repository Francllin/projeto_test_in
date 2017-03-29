# language:pt

@global
Funcionalidade: Consulta films
# - Enviar um GET para a API http://swapi.co/api/films/ e exibir o conteúdo do campo “title”
# de cada elemento da estrutura “results”. Validar o statuscode da resposta da requisição.

@get_films
Cenario: Consulta de all films
  Dado que faça uma consulta dos elementos 
  Então o status code é "200"
  E os title são exibidos da consulta de films

