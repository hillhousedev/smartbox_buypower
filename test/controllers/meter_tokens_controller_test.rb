require 'test_helper'

class MeterTokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meter_token = meter_tokens(:one)
  end

  test "should get index" do
    get meter_tokens_url
    assert_response :success
  end

  test "should get new" do
    get new_meter_token_url
    assert_response :success
  end

  test "should create meter_token" do
    assert_difference('MeterToken.count') do
      post meter_tokens_url, params: { meter_token: { auto_load_device_id: @meter_token.auto_load_device_id, device_address: @meter_token.device_address, device_id: @meter_token.device_id, device_sim_no: @meter_token.device_sim_no, meter_id: @meter_token.meter_id, meter_type: @meter_token.meter_type, token: @meter_token.token } }
    end

    assert_redirected_to meter_token_url(MeterToken.last)
  end

  test "should show meter_token" do
    get meter_token_url(@meter_token)
    assert_response :success
  end

  test "should get edit" do
    get edit_meter_token_url(@meter_token)
    assert_response :success
  end

  test "should update meter_token" do
    patch meter_token_url(@meter_token), params: { meter_token: { auto_load_device_id: @meter_token.auto_load_device_id, device_address: @meter_token.device_address, device_id: @meter_token.device_id, device_sim_no: @meter_token.device_sim_no, meter_id: @meter_token.meter_id, meter_type: @meter_token.meter_type, token: @meter_token.token } }
    assert_redirected_to meter_token_url(@meter_token)
  end

  test "should destroy meter_token" do
    assert_difference('MeterToken.count', -1) do
      delete meter_token_url(@meter_token)
    end

    assert_redirected_to meter_tokens_url
  end
end
