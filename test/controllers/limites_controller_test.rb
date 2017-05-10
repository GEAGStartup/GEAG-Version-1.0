require 'test_helper'

class LimitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @limite = limites(:one)
  end

  test "should get index" do
    get limites_url
    assert_response :success
  end

  test "should get new" do
    get new_limite_url
    assert_response :success
  end

  test "should create limite" do
    assert_difference('Limite.count') do
      post limites_url, params: { limite: { meter_id: @limite.meter_id, value: @limite.value } }
    end

    assert_redirected_to limite_url(Limite.last)
  end

  test "should show limite" do
    get limite_url(@limite)
    assert_response :success
  end

  test "should get edit" do
    get edit_limite_url(@limite)
    assert_response :success
  end

  test "should update limite" do
    patch limite_url(@limite), params: { limite: { meter_id: @limite.meter_id, value: @limite.value } }
    assert_redirected_to limite_url(@limite)
  end

  test "should destroy limite" do
    assert_difference('Limite.count', -1) do
      delete limite_url(@limite)
    end

    assert_redirected_to limites_url
  end
end
