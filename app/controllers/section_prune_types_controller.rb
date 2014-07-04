class SectionPruneTypesController < ApplicationController
  before_action :set_section_prune_type, only: [:show, :edit, :update, :destroy]

  # GET /section_prune_types
  # GET /section_prune_types.json
  def index
    @section_prune_types = SectionPruneType.all
  end

  # GET /section_prune_types/1
  # GET /section_prune_types/1.json
  def show
  end

  # GET /section_prune_types/new
  def new
    @section_prune_type = SectionPruneType.new
  end

  # GET /section_prune_types/1/edit
  def edit
  end

  # POST /section_prune_types
  # POST /section_prune_types.json
  def create
    @section_prune_type = SectionPruneType.new(section_prune_type_params)

    respond_to do |format|
      if @section_prune_type.save
        format.html { redirect_to @section_prune_type, notice: 'Section prune type was successfully created.' }
        format.json { render :show, status: :created, location: @section_prune_type }
      else
        format.html { render :new }
        format.json { render json: @section_prune_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_prune_types/1
  # PATCH/PUT /section_prune_types/1.json
  def update
    respond_to do |format|
      if @section_prune_type.update(section_prune_type_params)
        format.html { redirect_to @section_prune_type, notice: 'Section prune type was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_prune_type }
      else
        format.html { render :edit }
        format.json { render json: @section_prune_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_prune_types/1
  # DELETE /section_prune_types/1.json
  def destroy
    @section_prune_type.destroy
    respond_to do |format|
      format.html { redirect_to section_prune_types_url, notice: 'Section prune type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_prune_type
      @section_prune_type = SectionPruneType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_prune_type_params
      params.require(:section_prune_type).permit(:year, :section_id, :prune_type_id)
    end
end
