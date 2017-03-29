# language:pt

@global
Funcionalidade: Consulta planets

# - Enviar um GET para a API http://swapi.co/api/planets/, armazenar o valor do campo
# “count”, enviar um novo GET para o mesmo endpoint passando um valor aleatório que seja
# superior ao armazenado. Validar o statuscode e a mensagem exibida.
  
@get_planets
Cenario: Consulta de all planets
  Dado que faço uma consulta e armazeno o valor do campo count
  Quando faço uma consulta passando um valor aleatório superior ao armazenado do campo count
  Então o status code é "404"
  E é exibido uma mensagem de validação
  """
  Not found
  """

