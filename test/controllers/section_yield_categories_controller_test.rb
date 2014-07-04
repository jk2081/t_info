require 'test_helper'

class SectionYieldCategoriesControllerTest < ActionController::TestCase
  setup do
    @section_yield_category = section_yield_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_yield_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_yield_category" do
    assert_difference('SectionYieldCategory.count') do
      post :create, section_yield_category: { section_id: @section_yield_category.section_id, year: @section_yield_category.year, yield_category_id: @section_yield_category.yield_category_id }
    end

    assert_redirected_to section_yield_category_path(assigns(:section_yield_category))
  end

  test "should show section_yield_category" do
    get :show, id: @section_yield_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_yield_category
    assert_response :success
  end

  test "should update section_yield_category" do
    patch :update, id: @section_yield_category, section_yield_category: { section_id: @section_yield_category.section_id, year: @section_yield_category.year, yield_category_id: @section_yield_category.yield_category_id }
    assert_redirected_to section_yield_category_path(assigns(:section_yield_category))
  end

  test "should destroy section_yield_category" do
    assert_difference('SectionYieldCategory.count', -1) do
      delete :destroy, id: @section_yield_category
    end

    assert_redirected_to section_yield_categories_path
  end
end
