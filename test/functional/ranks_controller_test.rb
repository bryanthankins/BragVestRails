require 'test_helper'

class RanksControllerTest < ActionController::TestCase
#  test "should get index" do
#    get :index
#    assert_response :success
#    assert_not_nil assigns(:ranks)
#  end

#  test "should get new" do
#    get :new
#    assert_response :success
#  end

#  test "should create rank" do
#    assert_difference('Rank.count') do
#      post :create, :rank => { }
#    end

#    assert_redirected_to rank_path(assigns(:rank))
#  end

  test "should show rank" do
    get :show, :id => ranks(:one).to_param
    assert_response :redirect
    #assert_redirected_to rank_badge_path
  end

#  test "should get edit" do
#    get :edit, :id => ranks(:one).to_param
#    assert_response :success
#  end

#  test "should update rank" do
#    put :update, :id => ranks(:one).to_param, :rank => { }
#    assert_redirected_to rank_path(assigns(:rank))
#  end

#  test "should destroy rank" do
#    assert_difference('Rank.count', -1) do
#      delete :destroy, :id => ranks(:one).to_param
#    end

#    assert_redirected_to ranks_path
#  end
end
