require 'test_helper'

class SectionBushTypesControllerTest < ActionController::TestCase
  setup do
    @section_bush_type = section_bush_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_bush_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_bush_type" do
    assert_difference('SectionBushType.count') do
      post :create, section_bush_type: { bush_type_id: @section_bush_type.bush_type_id, section_id: @section_bush_type.section_id, year: @section_bush_type.year }
    end

    assert_redirected_to section_bush_type_path(assigns(:section_bush_type))
  end

  test "should show section_bush_type" do
    get :show, id: @section_bush_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_bush_type
    assert_response :success
  end

  test "should update section_bush_type" do
    patch :update, id: @section_bush_type, section_bush_type: { bush_type_id: @section_bush_type.bush_type_id, section_id: @section_bush_type.section_id, year: @section_bush_type.year }
    assert_redirected_to section_bush_type_path(assigns(:section_bush_type))
  end

  test "should destroy section_bush_type" do
    assert_difference('SectionBushType.count', -1) do
      delete :destroy, id: @section_bush_type
    end

    assert_redirected_to section_bush_types_path
  end
end
