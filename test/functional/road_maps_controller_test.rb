require 'test_helper'

class RoadMapsControllerTest < ActionController::TestCase
  setup do
    @road_map = road_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:road_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create road_map" do
    assert_difference('RoadMap.count') do
      post :create, road_map: { sector: @road_map.sector, title: @road_map.title }
    end

    assert_redirected_to road_map_path(assigns(:road_map))
  end

  test "should show road_map" do
    get :show, id: @road_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @road_map
    assert_response :success
  end

  test "should update road_map" do
    put :update, id: @road_map, road_map: { sector: @road_map.sector, title: @road_map.title }
    assert_redirected_to road_map_path(assigns(:road_map))
  end

  test "should destroy road_map" do
    assert_difference('RoadMap.count', -1) do
      delete :destroy, id: @road_map
    end

    assert_redirected_to road_maps_path
  end
end
