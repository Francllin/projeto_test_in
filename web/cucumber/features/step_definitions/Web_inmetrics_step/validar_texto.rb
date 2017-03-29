#  encoding: utf-8

Dado(/^que eu acesse a pagina da inmetrics$/) do
@homeinmetrics.load
end

Quando(/^clico no link Quem Somos$/) do
@componente.quemsomsos.click
end

Entao(/^é apresentado o seguinte texto$/) do |msg|
expect(page).to have_content(msg)
sleep 5
end
