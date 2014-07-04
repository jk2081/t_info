require 'test_helper'

class BushTypesControllerTest < ActionController::TestCase
  setup do
    @bush_type = bush_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bush_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bush_type" do
    assert_difference('BushType.count') do
      post :create, bush_type: { name: @bush_type.name }
    end

    assert_redirected_to bush_type_path(assigns(:bush_type))
  end

  test "should show bush_type" do
    get :show, id: @bush_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bush_type
    assert_response :success
  end

  test "should update bush_type" do
    patch :update, id: @bush_type, bush_type: { name: @bush_type.name }
    assert_redirected_to bush_type_path(assigns(:bush_type))
  end

  test "should destroy bush_type" do
    assert_difference('BushType.count', -1) do
      delete :destroy, id: @bush_type
    end

    assert_redirected_to bush_types_path
  end
end
