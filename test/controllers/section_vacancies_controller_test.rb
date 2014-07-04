require 'test_helper'

class SectionVacanciesControllerTest < ActionController::TestCase
  setup do
    @section_vacancy = section_vacancies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_vacancies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_vacancy" do
    assert_difference('SectionVacancy.count') do
      post :create, section_vacancy: { date_of_count: @section_vacancy.date_of_count, num_plants: @section_vacancy.num_plants, section_id: @section_vacancy.section_id, vacancy: @section_vacancy.vacancy }
    end

    assert_redirected_to section_vacancy_path(assigns(:section_vacancy))
  end

  test "should show section_vacancy" do
    get :show, id: @section_vacancy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_vacancy
    assert_response :success
  end

  test "should update section_vacancy" do
    patch :update, id: @section_vacancy, section_vacancy: { date_of_count: @section_vacancy.date_of_count, num_plants: @section_vacancy.num_plants, section_id: @section_vacancy.section_id, vacancy: @section_vacancy.vacancy }
    assert_redirected_to section_vacancy_path(assigns(:section_vacancy))
  end

  test "should destroy section_vacancy" do
    assert_difference('SectionVacancy.count', -1) do
      delete :destroy, id: @section_vacancy
    end

    assert_redirected_to section_vacancies_path
  end
end
