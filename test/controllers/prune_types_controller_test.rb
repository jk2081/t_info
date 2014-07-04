require 'test_helper'

class PruneTypesControllerTest < ActionController::TestCase
  setup do
    @prune_type = prune_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prune_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prune_type" do
    assert_difference('PruneType.count') do
      post :create, prune_type: { name: @prune_type.name }
    end

    assert_redirected_to prune_type_path(assigns(:prune_type))
  end

  test "should show prune_type" do
    get :show, id: @prune_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prune_type
    assert_response :success
  end

  test "should update prune_type" do
    patch :update, id: @prune_type, prune_type: { name: @prune_type.name }
    assert_redirected_to prune_type_path(assigns(:prune_type))
  end

  test "should destroy prune_type" do
    assert_difference('PruneType.count', -1) do
      delete :destroy, id: @prune_type
    end

    assert_redirected_to prune_types_path
  end
end
