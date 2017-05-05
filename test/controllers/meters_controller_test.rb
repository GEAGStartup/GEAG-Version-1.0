require 'test_helper'

class MetersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meter = meters(:one)
  end

  test "should get index" do
    get meters_url
    assert_response :success
  end

  test "should get new" do
    get new_meter_url
    assert_response :success
  end

  test "should create meter" do
    assert_difference('Meter.count') do
      post meters_url, params: { meter: { type_id: @meter.type_id, user_id: @meter.user_id, value: @meter.value } }
    end

    assert_redirected_to meter_url(Meter.last)
  end

  test "should show meter" do
    get meter_url(@meter)
    assert_response :success
  end

  test "should get edit" do
    get edit_meter_url(@meter)
    assert_response :success
  end

  test "should update meter" do
    patch meter_url(@meter), params: { meter: { type_id: @meter.type_id, user_id: @meter.user_id, value: @meter.value } }
    assert_redirected_to meter_url(@meter)
  end

  test "should destroy meter" do
    assert_difference('Meter.count', -1) do
      delete meter_url(@meter)
    end

    assert_redirected_to meters_url
  end
end
