require "application_system_test_case"

class ListaContatosTest < ApplicationSystemTestCase
  setup do
    @lista_contato = lista_contatos(:one)
  end

  test "visiting the index" do
    visit lista_contatos_url
    assert_selector "h1", text: "Lista contatos"
  end

  test "should create lista contato" do
    visit lista_contatos_url
    click_on "New lista contato"

    fill_in "E-mail", with: @lista_contato.E-mail
    fill_in "Primeiro nome", with: @lista_contato.Primeiro_Nome
    fill_in "Telefone", with: @lista_contato.Telefone
    fill_in "Último nome", with: @lista_contato.Último_Nome
    click_on "Create Lista contato"

    assert_text "Lista contato was successfully created"
    click_on "Back"
  end

  test "should update Lista contato" do
    visit lista_contato_url(@lista_contato)
    click_on "Edit this lista contato", match: :first

    fill_in "E-mail", with: @lista_contato.E-mail
    fill_in "Primeiro nome", with: @lista_contato.Primeiro_Nome
    fill_in "Telefone", with: @lista_contato.Telefone
    fill_in "Último nome", with: @lista_contato.Último_Nome
    click_on "Update Lista contato"

    assert_text "Lista contato was successfully updated"
    click_on "Back"
  end

  test "should destroy Lista contato" do
    visit lista_contato_url(@lista_contato)
    click_on "Destroy this lista contato", match: :first

    assert_text "Lista contato was successfully destroyed"
  end
end
