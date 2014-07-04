class SectionVacanciesController < ApplicationController
  before_action :set_section_vacancy, only: [:show, :edit, :update, :destroy]

  # GET /section_vacancies
  # GET /section_vacancies.json
  def index
    @section_vacancies = SectionVacancy.all
  end

  # GET /section_vacancies/1
  # GET /section_vacancies/1.json
  def show
  end

  # GET /section_vacancies/new
  def new
    @section_vacancy = SectionVacancy.new
  end

  # GET /section_vacancies/1/edit
  def edit
  end

  # POST /section_vacancies
  # POST /section_vacancies.json
  def create
    @section_vacancy = SectionVacancy.new(section_vacancy_params)

    respond_to do |format|
      if @section_vacancy.save
        format.html { redirect_to @section_vacancy, notice: 'Section vacancy was successfully created.' }
        format.json { render :show, status: :created, location: @section_vacancy }
      else
        format.html { render :new }
        format.json { render json: @section_vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_vacancies/1
  # PATCH/PUT /section_vacancies/1.json
  def update
    respond_to do |format|
      if @section_vacancy.update(section_vacancy_params)
        format.html { redirect_to @section_vacancy, notice: 'Section vacancy was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_vacancy }
      else
        format.html { render :edit }
        format.json { render json: @section_vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_vacancies/1
  # DELETE /section_vacancies/1.json
  def destroy
    @section_vacancy.destroy
    respond_to do |format|
      format.html { redirect_to section_vacancies_url, notice: 'Section vacancy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_vacancy
      @section_vacancy = SectionVacancy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_vacancy_params
      params.require(:section_vacancy).permit(:num_plants, :date_of_count, :vacancy, :section_id)
    end
end
