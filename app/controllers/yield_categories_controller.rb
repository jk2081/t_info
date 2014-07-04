class YieldCategoriesController < ApplicationController
  before_action :set_yield_category, only: [:show, :edit, :update, :destroy]

  # GET /yield_categories
  # GET /yield_categories.json
  def index
    @yield_categories = YieldCategory.all
  end

  # GET /yield_categories/1
  # GET /yield_categories/1.json
  def show
  end

  # GET /yield_categories/new
  def new
    @yield_category = YieldCategory.new
  end

  # GET /yield_categories/1/edit
  def edit
  end

  # POST /yield_categories
  # POST /yield_categories.json
  def create
    @yield_category = YieldCategory.new(yield_category_params)

    respond_to do |format|
      if @yield_category.save
        format.html { redirect_to @yield_category, notice: 'Yield category was successfully created.' }
        format.json { render :show, status: :created, location: @yield_category }
      else
        format.html { render :new }
        format.json { render json: @yield_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yield_categories/1
  # PATCH/PUT /yield_categories/1.json
  def update
    respond_to do |format|
      if @yield_category.update(yield_category_params)
        format.html { redirect_to @yield_category, notice: 'Yield category was successfully updated.' }
        format.json { render :show, status: :ok, location: @yield_category }
      else
        format.html { render :edit }
        format.json { render json: @yield_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yield_categories/1
  # DELETE /yield_categories/1.json
  def destroy
    @yield_category.destroy
    respond_to do |format|
      format.html { redirect_to yield_categories_url, notice: 'Yield category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yield_category
      @yield_category = YieldCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yield_category_params
      params.require(:yield_category).permit(:name)
    end
end
