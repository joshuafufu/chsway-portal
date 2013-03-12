require 'test_helper'

class EndUsersControllerTest < ActionController::TestCase
  setup do
    @end_user = end_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:end_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create end_user" do
    assert_difference('EndUser.count') do
      post :create, end_user: { name: @end_user.name, password: @end_user.password }
    end

    assert_redirected_to end_user_path(assigns(:end_user))
  end

  test "should show end_user" do
    get :show, id: @end_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @end_user
    assert_response :success
  end

  test "should update end_user" do
    put :update, id: @end_user, end_user: { name: @end_user.name, password: @end_user.password }
    assert_redirected_to end_user_path(assigns(:end_user))
  end

  test "should destroy end_user" do
    assert_difference('EndUser.count', -1) do
      delete :destroy, id: @end_user
    end

    assert_redirected_to end_users_path
  end
end
