require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  test "should get CustomerNews" do
    get :CustomerNews
    assert_response :success
  end

end
