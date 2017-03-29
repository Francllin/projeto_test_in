# encoding: utf-8

Dado(/^que faça uma consulta dos elementos$/) do
 @result = HTTParty.get(BASE_URL + '/films/',
  :headers => {
    "Content-Type" => @content_type,
})

end

Então(/^os title são exibidos da consulta de films$/) do
 # vai exibir todos os title representados na api
  results = @result.parsed_response['results']
  results.each do |item|
  puts item["title"]
  end
end
