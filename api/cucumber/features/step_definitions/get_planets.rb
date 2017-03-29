# encoding: utf-8

Dado(/^que faço uma consulta e armazeno o valor do campo count$/) do
 @result = HTTParty.get(BASE_URL + '/planets/',
  :headers => {
    "Content-Type" => @content_type,
})
@count = @result['count'].to_i + @numero.to_i
puts @count
end

Quando(/^faço uma consulta passando um valor aleatório superior ao armazenado do campo count$/) do
 @result = HTTParty.get(BASE_URL + '/planets/' + "#@count",
  :headers => {
    "Content-Type" => @content_type,
})

end

Então(/^é exibido uma mensagem de validação$/) do |mensagem|
expect(@result["detail"]).to match mensagem
end

