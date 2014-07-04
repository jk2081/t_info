class SectionYieldsController < ApplicationController
  before_action :set_section_yield, only: [:show, :edit, :update, :destroy]

  # GET /section_yields
  # GET /section_yields.json
  def index
    @section_yields = SectionYield.all
  end

  # GET /section_yields/1
  # GET /section_yields/1.json
  def show
  end

  # GET /section_yields/new
  def new
    @section_yield = SectionYield.new
  end

  # GET /section_yields/1/edit
  def edit
  end

  # POST /section_yields
  # POST /section_yields.json
  def create
    @section_yield = SectionYield.new(section_yield_params)

    respond_to do |format|
      if @section_yield.save
        format.html { redirect_to @section_yield, notice: 'Section yield was successfully created.' }
        format.json { render :show, status: :created, location: @section_yield }
      else
        format.html { render :new }
        format.json { render json: @section_yield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_yields/1
  # PATCH/PUT /section_yields/1.json
  def update
    respond_to do |format|
      if @section_yield.update(section_yield_params)
        format.html { redirect_to @section_yield, notice: 'Section yield was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_yield }
      else
        format.html { render :edit }
        format.json { render json: @section_yield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_yields/1
  # DELETE /section_yields/1.json
  def destroy
    @section_yield.destroy
    respond_to do |format|
      format.html { redirect_to section_yields_url, notice: 'Section yield was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_yield
      @section_yield = SectionYield.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_yield_params
      params.require(:section_yield).permit(:budget, :actual, :year, :section_id)
    end
end
