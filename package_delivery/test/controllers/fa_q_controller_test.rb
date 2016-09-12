require 'test_helper'

class FaQControllerTest < ActionController::TestCase
  test "should get managerfaq" do
    get :managerfaq
    assert_response :success
  end

  test "should get customerfaq" do
    get :customerfaq
    assert_response :success
  end

end
