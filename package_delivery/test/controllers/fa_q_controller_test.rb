require 'test_helper'

class FaQControllerTest < ActionController::TestCase
  test "should get manager_faq" do
    get :manager_faq
    assert_response :success
  end

  test "should get customer_faq" do
    get :customer_faq
    assert_response :success
  end

end
