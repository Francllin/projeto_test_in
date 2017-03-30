#encoding: utf-8
Quando(/^que eu clique na opção Close drawer$/) do
touch(query("android.support.v7.widget.i id:'button1'"))   
sleep 2
end

Quando(/^seleciono uma new notebook para criação de anotação$/) do
touch(query("android.widget.TextView id:'item_drawer_text'")[4])
end

Quando(/^clico no botão \+ para cadastar uma anotação$/) do
touch(query("android.widget.ImageButton id:'fab'"))
end

Quando(/^preencho os campos com datos validos para criar uma anotação$/) do
touch(query("android.widget.Spinner id:'fragment_note_priority'"))
sleep 2
touch(query("* marked:'A'"))
sleep 1
enter_text("android.widget.EditText id:'fragment_note_title'", @nome_2)
enter_text("android.widget.EditText id:'fragment_note_tags'", @nome)
sleep 1
touch("android.widget.Button id:'fragment_note_scheduled_button'")
sleep 1
touch("android.widget.CheckBox id:'dialog_timestamp_time'")
sleep 1
touch("android.widget.Button id:'button1'")
end

Quando(/^confirmo o cadastro de uma anotação$/) do
touch("android.widget.TextView id:'done'")
end
Entao(/^a será apresentada a anotação criada$/) do
assert_text(@name)

end
