# encoding: utf-8
Então(/^o status code é "([^"]*)"$/) do |status_code|
  expect(@result.response.code).to match status_code
end
