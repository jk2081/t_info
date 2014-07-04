require 'test_helper'

class SectionDivisionsControllerTest < ActionController::TestCase
  setup do
    @section_division = section_divisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_divisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_division" do
    assert_difference('SectionDivision.count') do
      post :create, section_division: { division_id: @section_division.division_id, section_id: @section_division.section_id, year: @section_division.year }
    end

    assert_redirected_to section_division_path(assigns(:section_division))
  end

  test "should show section_division" do
    get :show, id: @section_division
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_division
    assert_response :success
  end

  test "should update section_division" do
    patch :update, id: @section_division, section_division: { division_id: @section_division.division_id, section_id: @section_division.section_id, year: @section_division.year }
    assert_redirected_to section_division_path(assigns(:section_division))
  end

  test "should destroy section_division" do
    assert_difference('SectionDivision.count', -1) do
      delete :destroy, id: @section_division
    end

    assert_redirected_to section_divisions_path
  end
end
