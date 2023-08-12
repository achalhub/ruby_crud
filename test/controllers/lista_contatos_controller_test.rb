require "test_helper"

class ListaContatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lista_contato = lista_contatos(:one)
  end

  test "should get index" do
    get lista_contatos_url
    assert_response :success
  end

  test "should get new" do
    get new_lista_contato_url
    assert_response :success
  end

  test "should create lista_contato" do
    assert_difference("ListaContato.count") do
      post lista_contatos_url, params: { lista_contato: { E-mail: @lista_contato.E-mail, Primeiro_Nome: @lista_contato.Primeiro_Nome, Telefone: @lista_contato.Telefone, Último_Nome: @lista_contato.Último_Nome } }
    end

    assert_redirected_to lista_contato_url(ListaContato.last)
  end

  test "should show lista_contato" do
    get lista_contato_url(@lista_contato)
    assert_response :success
  end

  test "should get edit" do
    get edit_lista_contato_url(@lista_contato)
    assert_response :success
  end

  test "should update lista_contato" do
    patch lista_contato_url(@lista_contato), params: { lista_contato: { E-mail: @lista_contato.E-mail, Primeiro_Nome: @lista_contato.Primeiro_Nome, Telefone: @lista_contato.Telefone, Último_Nome: @lista_contato.Último_Nome } }
    assert_redirected_to lista_contato_url(@lista_contato)
  end

  test "should destroy lista_contato" do
    assert_difference("ListaContato.count", -1) do
      delete lista_contato_url(@lista_contato)
    end

    assert_redirected_to lista_contatos_url
  end
end
