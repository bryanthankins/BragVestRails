require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should show home" do
    get :index
    assert_response :success
  end
end
