require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get pages_inicio_url
    assert_response :success
  end

  test "should get sobre" do
    get pages_sobre_url
    assert_response :success
  end

  test "should get contatos" do
    get pages_contatos_url
    assert_response :success
  end
end
