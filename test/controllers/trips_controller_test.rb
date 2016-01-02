require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post :create, trip: { drop_lat: @trip.drop_lat, drop_lat: @trip.drop_lat, drop_lng: @trip.drop_lng, drop_lng: @trip.drop_lng, drop_range: @trip.drop_range, drop_time: @trip.drop_time, pick_lat: @trip.pick_lat, pick_lat: @trip.pick_lat, pick_lng: @trip.pick_lng, pick_lng: @trip.pick_lng, pick_range: @trip.pick_range, pick_time: @trip.pick_time }
    end

    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    patch :update, id: @trip, trip: { drop_lat: @trip.drop_lat, drop_lat: @trip.drop_lat, drop_lng: @trip.drop_lng, drop_lng: @trip.drop_lng, drop_range: @trip.drop_range, drop_time: @trip.drop_time, pick_lat: @trip.pick_lat, pick_lat: @trip.pick_lat, pick_lng: @trip.pick_lng, pick_lng: @trip.pick_lng, pick_range: @trip.pick_range, pick_time: @trip.pick_time }
    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete :destroy, id: @trip
    end

    assert_redirected_to trips_path
  end
end
