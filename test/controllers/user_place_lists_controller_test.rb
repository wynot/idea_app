require 'test_helper'

class UserPlaceListsControllerTest < ActionController::TestCase
  setup do
    @user_place_list = user_place_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_place_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_place_list" do
    assert_difference('UserPlaceList.count') do
      post :create, user_place_list: {  }
    end

    assert_redirected_to user_place_list_path(assigns(:user_place_list))
  end

  test "should show user_place_list" do
    get :show, id: @user_place_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_place_list
    assert_response :success
  end

  test "should update user_place_list" do
    patch :update, id: @user_place_list, user_place_list: {  }
    assert_redirected_to user_place_list_path(assigns(:user_place_list))
  end

  test "should destroy user_place_list" do
    assert_difference('UserPlaceList.count', -1) do
      delete :destroy, id: @user_place_list
    end

    assert_redirected_to user_place_lists_path
  end
end
