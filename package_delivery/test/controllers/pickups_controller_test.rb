require 'test_helper'

class PickupsControllerTest < ActionController::TestCase
  setup do
    @pickup = pickups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup" do
    assert_difference('Pickup.count') do
      post :create, pickup: { address: @pickup.address, city: @pickup.city, company: @pickup.company, country: @pickup.country, instructions: @pickup.instructions, location_type: @pickup.location_type, name: @pickup.name, number: @pickup.number, package_location: @pickup.package_location, pickup_date: @pickup.pickup_date, pickup_time: @pickup.pickup_time, shipment_amount: @pickup.shipment_amount, state: @pickup.state, weight: @pickup.weight, zip: @pickup.zip }
    end

    assert_redirected_to pickup_path(assigns(:pickup))
  end

  test "should show pickup" do
    get :show, id: @pickup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup
    assert_response :success
  end

  test "should update pickup" do
    patch :update, id: @pickup, pickup: { address: @pickup.address, city: @pickup.city, company: @pickup.company, country: @pickup.country, instructions: @pickup.instructions, location_type: @pickup.location_type, name: @pickup.name, number: @pickup.number, package_location: @pickup.package_location, pickup_date: @pickup.pickup_date, pickup_time: @pickup.pickup_time, shipment_amount: @pickup.shipment_amount, state: @pickup.state, weight: @pickup.weight, zip: @pickup.zip }
    assert_redirected_to pickup_path(assigns(:pickup))
  end

  test "should destroy pickup" do
    assert_difference('Pickup.count', -1) do
      delete :destroy, id: @pickup
    end

    assert_redirected_to pickups_path
  end
end
