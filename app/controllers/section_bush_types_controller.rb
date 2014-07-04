class SectionBushTypesController < ApplicationController
  before_action :set_section_bush_type, only: [:show, :edit, :update, :destroy]

  # GET /section_bush_types
  # GET /section_bush_types.json
  def index
    @section_bush_types = SectionBushType.all
  end

  # GET /section_bush_types/1
  # GET /section_bush_types/1.json
  def show
  end

  # GET /section_bush_types/new
  def new
    @section_bush_type = SectionBushType.new
  end

  # GET /section_bush_types/1/edit
  def edit
  end

  # POST /section_bush_types
  # POST /section_bush_types.json
  def create
    @section_bush_type = SectionBushType.new(section_bush_type_params)

    respond_to do |format|
      if @section_bush_type.save
        format.html { redirect_to @section_bush_type, notice: 'Section bush type was successfully created.' }
        format.json { render :show, status: :created, location: @section_bush_type }
      else
        format.html { render :new }
        format.json { render json: @section_bush_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_bush_types/1
  # PATCH/PUT /section_bush_types/1.json
  def update
    respond_to do |format|
      if @section_bush_type.update(section_bush_type_params)
        format.html { redirect_to @section_bush_type, notice: 'Section bush type was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_bush_type }
      else
        format.html { render :edit }
        format.json { render json: @section_bush_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_bush_types/1
  # DELETE /section_bush_types/1.json
  def destroy
    @section_bush_type.destroy
    respond_to do |format|
      format.html { redirect_to section_bush_types_url, notice: 'Section bush type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_bush_type
      @section_bush_type = SectionBushType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_bush_type_params
      params.require(:section_bush_type).permit(:year, :section_id, :bush_type_id)
    end
end
