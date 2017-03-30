#encoding: utf-8

Quando(/^que eu clique no botão \+ para cadastar um new notebook$/) do
touch(query("android.support.v7.widget.i id:'button1'"))   
sleep 2
touch(query("android.widget.ImageButton"))
sleep 2
touch(query("android.widget.ImageButton id:'fab'"))
end

Quando(/^preencho o campo name$/) do
enter_text("android.widget.EditText", @nome)
end

Quando(/^e confirmo a criação de um new notebook$/) do
touch(query("android.support.v7.widget.i id:'button1'"))
wait_for_elements_exist("android.widget.LinearLayout", timeout: 5)
end

Entao(/^a será apresentada a new notebook criada$/) do
assert_text(@nome)
sleep 5
end
