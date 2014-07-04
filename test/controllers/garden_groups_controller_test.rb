require 'test_helper'

class GardenGroupsControllerTest < ActionController::TestCase
  setup do
    @garden_group = garden_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garden_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garden_group" do
    assert_difference('GardenGroup.count') do
      post :create, garden_group: { name: @garden_group.name }
    end

    assert_redirected_to garden_group_path(assigns(:garden_group))
  end

  test "should show garden_group" do
    get :show, id: @garden_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garden_group
    assert_response :success
  end

  test "should update garden_group" do
    patch :update, id: @garden_group, garden_group: { name: @garden_group.name }
    assert_redirected_to garden_group_path(assigns(:garden_group))
  end

  test "should destroy garden_group" do
    assert_difference('GardenGroup.count', -1) do
      delete :destroy, id: @garden_group
    end

    assert_redirected_to garden_groups_path
  end
end
