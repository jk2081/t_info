require 'test_helper'

class GardensControllerTest < ActionController::TestCase
  setup do
    @garden = gardens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gardens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garden" do
    assert_difference('Garden.count') do
      post :create, garden: { garden_group_id: @garden.garden_group_id, name: @garden.name }
    end

    assert_redirected_to garden_path(assigns(:garden))
  end

  test "should show garden" do
    get :show, id: @garden
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garden
    assert_response :success
  end

  test "should update garden" do
    patch :update, id: @garden, garden: { garden_group_id: @garden.garden_group_id, name: @garden.name }
    assert_redirected_to garden_path(assigns(:garden))
  end

  test "should destroy garden" do
    assert_difference('Garden.count', -1) do
      delete :destroy, id: @garden
    end

    assert_redirected_to gardens_path
  end
end
