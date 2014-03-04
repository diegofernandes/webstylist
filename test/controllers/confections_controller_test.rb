require 'test_helper'

class ConfectionsControllerTest < ActionController::TestCase
  setup do
    @confection = confections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confection" do
    assert_difference('Confection.count') do
      post :create, confection: { code: @confection.code, name: @confection.name }
    end

    assert_redirected_to confection_path(assigns(:confection))
  end

  test "should show confection" do
    get :show, id: @confection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confection
    assert_response :success
  end

  test "should update confection" do
    patch :update, id: @confection, confection: { code: @confection.code, name: @confection.name }
    assert_redirected_to confection_path(assigns(:confection))
  end

  test "should destroy confection" do
    assert_difference('Confection.count', -1) do
      delete :destroy, id: @confection
    end

    assert_redirected_to confections_path
  end
end
