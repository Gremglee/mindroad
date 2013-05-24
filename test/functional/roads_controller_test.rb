require 'test_helper'

class RoadsControllerTest < ActionController::TestCase
  setup do
    @road = roads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create road" do
    assert_difference('Road.count') do
      post :create, road: { first_line: @road.first_line, fourth_line: @road.fourth_line, road_id: @road.road_id, second_line: @road.second_line, third_line: @road.third_line }
    end

    assert_redirected_to road_path(assigns(:road))
  end

  test "should show road" do
    get :show, id: @road
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @road
    assert_response :success
  end

  test "should update road" do
    put :update, id: @road, road: { first_line: @road.first_line, fourth_line: @road.fourth_line, road_id: @road.road_id, second_line: @road.second_line, third_line: @road.third_line }
    assert_redirected_to road_path(assigns(:road))
  end

  test "should destroy road" do
    assert_difference('Road.count', -1) do
      delete :destroy, id: @road
    end

    assert_redirected_to roads_path
  end
end
