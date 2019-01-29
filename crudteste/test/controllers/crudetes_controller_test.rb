require 'test_helper'

class CrudetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crudete = crudetes(:one)
  end

  test "should get index" do
    get crudetes_url
    assert_response :success
  end

  test "should get new" do
    get new_crudete_url
    assert_response :success
  end

  test "should create crudete" do
    assert_difference('Crudete.count') do
      post crudetes_url, params: { crudete: { email: @crudete.email, nome: @crudete.nome } }
    end

    assert_redirected_to crudete_url(Crudete.last)
  end

  test "should show crudete" do
    get crudete_url(@crudete)
    assert_response :success
  end

  test "should get edit" do
    get edit_crudete_url(@crudete)
    assert_response :success
  end

  test "should update crudete" do
    patch crudete_url(@crudete), params: { crudete: { email: @crudete.email, nome: @crudete.nome } }
    assert_redirected_to crudete_url(@crudete)
  end

  test "should destroy crudete" do
    assert_difference('Crudete.count', -1) do
      delete crudete_url(@crudete)
    end

    assert_redirected_to crudetes_url
  end
end
