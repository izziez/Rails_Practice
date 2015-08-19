require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { Feeding_Instructions_AM: @location.Feeding_Instructions_AM, Feeding_Instructions_Lunch: @location.Feeding_Instructions_Lunch, Feeding_Instructions_PM: @location.Feeding_Instructions_PM, General_Behavior_Notes: @location.General_Behavior_Notes, integer: @location.integer, integer: @location.integer, pasture_number: @location.pasture_number, stall_number: @location.stall_number, text: @location.text, text: @location.text, text: @location.text, text: @location.text }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    patch :update, id: @location, location: { Feeding_Instructions_AM: @location.Feeding_Instructions_AM, Feeding_Instructions_Lunch: @location.Feeding_Instructions_Lunch, Feeding_Instructions_PM: @location.Feeding_Instructions_PM, General_Behavior_Notes: @location.General_Behavior_Notes, integer: @location.integer, integer: @location.integer, pasture_number: @location.pasture_number, stall_number: @location.stall_number, text: @location.text, text: @location.text, text: @location.text, text: @location.text }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
