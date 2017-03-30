#encoding: utf-8

Quando(/^clico na anotação para edição$/) do
touch(query("android.widget.TextView id:'item_head_title'"))
end

Quando(/^altero as informações da anotação$/) do
touch("android.widget.EditText id:'fragment_note_title'")
clear_text("android.widget.EditText id:'fragment_note_title'")
enter_text("android.widget.EditText id:'fragment_note_title'", @nome_2)
touch("android.widget.EditText id:'fragment_note_tags'")
clear_text("android.widget.EditText id:'fragment_note_tags'")
enter_text("android.widget.EditText id:'fragment_note_tags'", @nome)
end

Quando(/^confirmo a edição de uma anotação$/) do
touch("android.widget.TextView id:'done'")
end

Entao(/^a será apresentada a anotação editada$/) do
assert_text(@name)
end
