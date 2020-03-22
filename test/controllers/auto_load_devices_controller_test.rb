require 'test_helper'

class AutoLoadDevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_load_device = auto_load_devices(:one)
  end

  test "should get index" do
    get auto_load_devices_url
    assert_response :success
  end

  test "should get new" do
    get new_auto_load_device_url
    assert_response :success
  end

  test "should create auto_load_device" do
    assert_difference('AutoLoadDevice.count') do
      post auto_load_devices_url, params: { auto_load_device: { address: @auto_load_device.address, meter_id: @auto_load_device.meter_id, meter_type: @auto_load_device.meter_type, name: @auto_load_device.name, phone_no: @auto_load_device.phone_no, token_id: @auto_load_device.token_id } }
    end

    assert_redirected_to auto_load_device_url(AutoLoadDevice.last)
  end

  test "should show auto_load_device" do
    get auto_load_device_url(@auto_load_device)
    assert_response :success
  end

  test "should get edit" do
    get edit_auto_load_device_url(@auto_load_device)
    assert_response :success
  end

  test "should update auto_load_device" do
    patch auto_load_device_url(@auto_load_device), params: { auto_load_device: { address: @auto_load_device.address, meter_id: @auto_load_device.meter_id, meter_type: @auto_load_device.meter_type, name: @auto_load_device.name, phone_no: @auto_load_device.phone_no, token_id: @auto_load_device.token_id } }
    assert_redirected_to auto_load_device_url(@auto_load_device)
  end

  test "should destroy auto_load_device" do
    assert_difference('AutoLoadDevice.count', -1) do
      delete auto_load_device_url(@auto_load_device)
    end

    assert_redirected_to auto_load_devices_url
  end
end
