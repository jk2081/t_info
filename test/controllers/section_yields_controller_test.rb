require 'test_helper'

class SectionYieldsControllerTest < ActionController::TestCase
  setup do
    @section_yield = section_yields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_yields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_yield" do
    assert_difference('SectionYield.count') do
      post :create, section_yield: { actual: @section_yield.actual, budget: @section_yield.budget, section_id: @section_yield.section_id, year: @section_yield.year }
    end

    assert_redirected_to section_yield_path(assigns(:section_yield))
  end

  test "should show section_yield" do
    get :show, id: @section_yield
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_yield
    assert_response :success
  end

  test "should update section_yield" do
    patch :update, id: @section_yield, section_yield: { actual: @section_yield.actual, budget: @section_yield.budget, section_id: @section_yield.section_id, year: @section_yield.year }
    assert_redirected_to section_yield_path(assigns(:section_yield))
  end

  test "should destroy section_yield" do
    assert_difference('SectionYield.count', -1) do
      delete :destroy, id: @section_yield
    end

    assert_redirected_to section_yields_path
  end
end
