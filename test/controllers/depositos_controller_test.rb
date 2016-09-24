require 'test_helper'

class DepositosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposito = depositos(:one)
  end

  test "should get index" do
    get depositos_url
    assert_response :success
  end

  test "should get new" do
    get new_deposito_url
    assert_response :success
  end

  test "should create deposito" do
    assert_difference('Deposito.count') do
      post depositos_url, params: { deposito: { produto_id: @deposito.produto_id, quantidade: @deposito.quantidade } }
    end

    assert_redirected_to deposito_url(Deposito.last)
  end

  test "should show deposito" do
    get deposito_url(@deposito)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposito_url(@deposito)
    assert_response :success
  end

  test "should update deposito" do
    patch deposito_url(@deposito), params: { deposito: { produto_id: @deposito.produto_id, quantidade: @deposito.quantidade } }
    assert_redirected_to deposito_url(@deposito)
  end

  test "should destroy deposito" do
    assert_difference('Deposito.count', -1) do
      delete deposito_url(@deposito)
    end

    assert_redirected_to depositos_url
  end
end
