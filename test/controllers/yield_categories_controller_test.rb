require 'test_helper'

class YieldCategoriesControllerTest < ActionController::TestCase
  setup do
    @yield_category = yield_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yield_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yield_category" do
    assert_difference('YieldCategory.count') do
      post :create, yield_category: { name: @yield_category.name }
    end

    assert_redirected_to yield_category_path(assigns(:yield_category))
  end

  test "should show yield_category" do
    get :show, id: @yield_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yield_category
    assert_response :success
  end

  test "should update yield_category" do
    patch :update, id: @yield_category, yield_category: { name: @yield_category.name }
    assert_redirected_to yield_category_path(assigns(:yield_category))
  end

  test "should destroy yield_category" do
    assert_difference('YieldCategory.count', -1) do
      delete :destroy, id: @yield_category
    end

    assert_redirected_to yield_categories_path
  end
end
