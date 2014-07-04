class SectionYieldCategoriesController < ApplicationController
  before_action :set_section_yield_category, only: [:show, :edit, :update, :destroy]

  # GET /section_yield_categories
  # GET /section_yield_categories.json
  def index
    @section_yield_categories = SectionYieldCategory.all
  end

  # GET /section_yield_categories/1
  # GET /section_yield_categories/1.json
  def show
  end

  # GET /section_yield_categories/new
  def new
    @section_yield_category = SectionYieldCategory.new
  end

  # GET /section_yield_categories/1/edit
  def edit
  end

  # POST /section_yield_categories
  # POST /section_yield_categories.json
  def create
    @section_yield_category = SectionYieldCategory.new(section_yield_category_params)

    respond_to do |format|
      if @section_yield_category.save
        format.html { redirect_to @section_yield_category, notice: 'Section yield category was successfully created.' }
        format.json { render :show, status: :created, location: @section_yield_category }
      else
        format.html { render :new }
        format.json { render json: @section_yield_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_yield_categories/1
  # PATCH/PUT /section_yield_categories/1.json
  def update
    respond_to do |format|
      if @section_yield_category.update(section_yield_category_params)
        format.html { redirect_to @section_yield_category, notice: 'Section yield category was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_yield_category }
      else
        format.html { render :edit }
        format.json { render json: @section_yield_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_yield_categories/1
  # DELETE /section_yield_categories/1.json
  def destroy
    @section_yield_category.destroy
    respond_to do |format|
      format.html { redirect_to section_yield_categories_url, notice: 'Section yield category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_yield_category
      @section_yield_category = SectionYieldCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_yield_category_params
      params.require(:section_yield_category).permit(:year, :yield_category_id, :section_id)
    end
end
