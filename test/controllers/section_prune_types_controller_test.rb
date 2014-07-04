require 'test_helper'

class SectionPruneTypesControllerTest < ActionController::TestCase
  setup do
    @section_prune_type = section_prune_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_prune_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_prune_type" do
    assert_difference('SectionPruneType.count') do
      post :create, section_prune_type: { prune_type_id: @section_prune_type.prune_type_id, section_id: @section_prune_type.section_id, year: @section_prune_type.year }
    end

    assert_redirected_to section_prune_type_path(assigns(:section_prune_type))
  end

  test "should show section_prune_type" do
    get :show, id: @section_prune_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_prune_type
    assert_response :success
  end

  test "should update section_prune_type" do
    patch :update, id: @section_prune_type, section_prune_type: { prune_type_id: @section_prune_type.prune_type_id, section_id: @section_prune_type.section_id, year: @section_prune_type.year }
    assert_redirected_to section_prune_type_path(assigns(:section_prune_type))
  end

  test "should destroy section_prune_type" do
    assert_difference('SectionPruneType.count', -1) do
      delete :destroy, id: @section_prune_type
    end

    assert_redirected_to section_prune_types_path
  end
end
