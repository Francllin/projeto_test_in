Before '@geral' do
# Massa de dados para teste
@nome = Faker::Address.street_name
@nome_2 = Faker::Address.street_address

 end

Before '@cadastronew' do
    # Criando uma new notebook como pré condição
touch(query("android.support.v7.widget.i id:'button1'"))   
sleep 2
touch(query("android.widget.ImageButton"))
sleep 2
touch(query("android.widget.ImageButton id:'fab'"))
enter_text("android.widget.EditText", @nome)
touch(query("android.support.v7.widget.i id:'button1'"))
assert_text(@nome)
sleep 2

end

Before '@criaranotacao' do
    # Criando uma anotação como pré condição
touch(query("android.widget.FrameLayout id:'item_book_card_view'")[1])
touch(query("android.widget.ImageButton id:'fab'"))
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
touch("android.widget.TextView id:'done'")
assert_text(@name)
end