require 'test_helper'

class FbsControllerTest < ActionController::TestCase
  setup do
    @fb = fbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fb" do
    assert_difference('Fb.count') do
      post :create, fb: { email: @fb.email, password: @fb.password }
    end

    assert_redirected_to fb_path(assigns(:fb))
  end

  test "should show fb" do
    get :show, id: @fb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fb
    assert_response :success
  end

  test "should update fb" do
    put :update, id: @fb, fb: { email: @fb.email, password: @fb.password }
    assert_redirected_to fb_path(assigns(:fb))
  end

  test "should destroy fb" do
    assert_difference('Fb.count', -1) do
      delete :destroy, id: @fb
    end

    assert_redirected_to fbs_path
  end
end
