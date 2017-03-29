#  encoding: utf-8

Quando(/^acesso o setor de "([^"]*)"$/) do |setor|
sleep 2
click_link(setor)
end

Quando(/^verifico se é apresentado o texto$/) do |mensagem|
sleep 2
expect(page).to have_text(mensagem)
end

Quando(/^clico no botão Add Disciplinary Cases$/) do
sleep 2
find(:css, '#btnAdd').click
end

Quando(/^preencho os campos com informações validas$/) do
find(:css, '#addCase_employeeName_empName').set("cas")
sleep 1
first(:css, '.ac_over').click
sleep 1
find(:css, '#addCase_caseName').set("Disciplinary Case text")
sleep 1
find(:css, '#addCase_description').set(@lorem)
end

Quando(/^clico no botão para salvar$/) do
click_button 'Save'
sleep 5
end

Então(/^é concluida com sucesso a nota$/) do
expect(page).to have_text("Successfully Saved")
end
