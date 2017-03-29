#  encoding: utf-8

Dado(/^que eu tenho um usuário com o seguintes atributos$/) do |table|
#  pegando os user e senha definidas na feature para efetuar o login  
 @user = table.hashes[0]['Username']
 @pwd = table.hashes[0]['Password']

end

Quando(/^faço login$/) do
# efetuando o login com o user definido na login.feature.
@homeenterprise.load
@loginenterprise.username.set(@user)
@loginenterprise.passlogin.set(@pwd)
@loginenterprise.buttonlogin.click
end

Então(/^vejo o usuário logado$/) do
# Verificar de exite o id na tela para validar o login do user.
expect(page).to have_selector :css, '#welcome'
end
