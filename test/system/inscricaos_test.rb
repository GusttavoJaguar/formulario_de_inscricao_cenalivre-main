require "application_system_test_case"

class InscricaosTest < ApplicationSystemTestCase
  setup do
    @inscricao = inscricaos(:one)
  end

  test "visiting the index" do
    visit inscricaos_url
    assert_selector "h1", text: "Inscricaos"
  end

  test "should create inscricao" do
    visit inscricaos_url
    click_on "New inscricao"

    fill_in "Alcunha", with: @inscricao.alcunha
    fill_in "Contato", with: @inscricao.contato
    fill_in "Data nascimento", with: @inscricao.data_nascimento
    fill_in "Nome", with: @inscricao.nome
    fill_in "Regiao", with: @inscricao.regiao
    click_on "Create Inscricao"

    assert_text "Inscricao was successfully created"
    click_on "Back"
  end

  test "should update Inscricao" do
    visit inscricao_url(@inscricao)
    click_on "Edit this inscricao", match: :first

    fill_in "Alcunha", with: @inscricao.alcunha
    fill_in "Contato", with: @inscricao.contato
    fill_in "Data nascimento", with: @inscricao.data_nascimento
    fill_in "Nome", with: @inscricao.nome
    fill_in "Regiao", with: @inscricao.regiao
    click_on "Update Inscricao"

    assert_text "Inscricao was successfully updated"
    click_on "Back"
  end

  test "should destroy Inscricao" do
    visit inscricao_url(@inscricao)
    click_on "Destroy this inscricao", match: :first

    assert_text "Inscricao was successfully destroyed"
  end
end
