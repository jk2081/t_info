class SectionDivisionsController < ApplicationController
  before_action :set_section_division, only: [:show, :edit, :update, :destroy]

  # GET /section_divisions
  # GET /section_divisions.json
  def index
    @section_divisions = SectionDivision.all
  end

  # GET /section_divisions/1
  # GET /section_divisions/1.json
  def show
  end

  # GET /section_divisions/new
  def new
    @section_division = SectionDivision.new
  end

  # GET /section_divisions/1/edit
  def edit
  end

  # POST /section_divisions
  # POST /section_divisions.json
  def create
    @section_division = SectionDivision.new(section_division_params)

    respond_to do |format|
      if @section_division.save
        format.html { redirect_to @section_division, notice: 'Section division was successfully created.' }
        format.json { render :show, status: :created, location: @section_division }
      else
        format.html { render :new }
        format.json { render json: @section_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_divisions/1
  # PATCH/PUT /section_divisions/1.json
  def update
    respond_to do |format|
      if @section_division.update(section_division_params)
        format.html { redirect_to @section_division, notice: 'Section division was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_division }
      else
        format.html { render :edit }
        format.json { render json: @section_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_divisions/1
  # DELETE /section_divisions/1.json
  def destroy
    @section_division.destroy
    respond_to do |format|
      format.html { redirect_to section_divisions_url, notice: 'Section division was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_division
      @section_division = SectionDivision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_division_params
      params.require(:section_division).permit(:year, :section_id, :division_id)
    end
end
