require 'test_helper'

class BadgesControllerTest < ActionController::TestCase
  test "should show badges" do
    get :show, :id => badges(:one).to_param, :rank_id => ranks(:one).to_param
    assert_response :success
    assert_not_nil assigns(:rank)
    assert_not_nil assigns(:ranks)
    assert_not_nil assigns(:badge)
    assert_not_nil assigns(:badges)
    assert_not_nil assigns(:achievements)
  end

end
