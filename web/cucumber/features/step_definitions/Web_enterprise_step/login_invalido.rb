#  encoding: utf-8

Quando(/^faço login com um usuário invalido$/) do
@homeenterprise.load
@loginenterprise.username.set(@user)
@loginenterprise.passlogin.set(@pwd)
@loginenterprise.buttonlogin.click
end

Então(/^não deverá exibir o tela logada e apresentará a mensagem$/) do |mensagem|
    # verifica se exite a mensagem na tela.
expect(page).to have_text(mensagem)

end

