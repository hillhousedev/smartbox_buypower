require 'test_helper'

class ViewtestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @viewtester = viewtesters(:one)
  end

  test "should get index" do
    get viewtesters_url
    assert_response :success
  end

  test "should get new" do
    get new_viewtester_url
    assert_response :success
  end

  test "should create viewtester" do
    assert_difference('Viewtester.count') do
      post viewtesters_url, params: { viewtester: { age: @viewtester.age, name: @viewtester.name } }
    end

    assert_redirected_to viewtester_url(Viewtester.last)
  end

  test "should show viewtester" do
    get viewtester_url(@viewtester)
    assert_response :success
  end

  test "should get edit" do
    get edit_viewtester_url(@viewtester)
    assert_response :success
  end

  test "should update viewtester" do
    patch viewtester_url(@viewtester), params: { viewtester: { age: @viewtester.age, name: @viewtester.name } }
    assert_redirected_to viewtester_url(@viewtester)
  end

  test "should destroy viewtester" do
    assert_difference('Viewtester.count', -1) do
      delete viewtester_url(@viewtester)
    end

    assert_redirected_to viewtesters_url
  end
end
