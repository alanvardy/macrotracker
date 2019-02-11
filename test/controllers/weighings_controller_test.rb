require 'test_helper'

class WeighingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weighing = weighings(:one)
  end

  test "should get index" do
    get weighings_url
    assert_response :success
  end

  test "should get new" do
    get new_weighing_url
    assert_response :success
  end

  test "should create weighing" do
    assert_difference('Weighing.count') do
      post weighings_url, params: { weighing: { day: @weighing.day, user_id: @weighing.user_id, weight: @weighing.weight } }
    end

    assert_redirected_to weighing_url(Weighing.last)
  end

  test "should show weighing" do
    get weighing_url(@weighing)
    assert_response :success
  end

  test "should get edit" do
    get edit_weighing_url(@weighing)
    assert_response :success
  end

  test "should update weighing" do
    patch weighing_url(@weighing), params: { weighing: { day: @weighing.day, user_id: @weighing.user_id, weight: @weighing.weight } }
    assert_redirected_to weighing_url(@weighing)
  end

  test "should destroy weighing" do
    assert_difference('Weighing.count', -1) do
      delete weighing_url(@weighing)
    end

    assert_redirected_to weighings_url
  end
end
