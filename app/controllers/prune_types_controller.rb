class PruneTypesController < ApplicationController
  before_action :set_prune_type, only: [:show, :edit, :update, :destroy]

  # GET /prune_types
  # GET /prune_types.json
  def index
    @prune_types = PruneType.all
  end

  # GET /prune_types/1
  # GET /prune_types/1.json
  def show
  end

  # GET /prune_types/new
  def new
    @prune_type = PruneType.new
  end

  # GET /prune_types/1/edit
  def edit
  end

  # POST /prune_types
  # POST /prune_types.json
  def create
    @prune_type = PruneType.new(prune_type_params)

    respond_to do |format|
      if @prune_type.save
        format.html { redirect_to @prune_type, notice: 'Prune type was successfully created.' }
        format.json { render :show, status: :created, location: @prune_type }
      else
        format.html { render :new }
        format.json { render json: @prune_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prune_types/1
  # PATCH/PUT /prune_types/1.json
  def update
    respond_to do |format|
      if @prune_type.update(prune_type_params)
        format.html { redirect_to @prune_type, notice: 'Prune type was successfully updated.' }
        format.json { render :show, status: :ok, location: @prune_type }
      else
        format.html { render :edit }
        format.json { render json: @prune_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prune_types/1
  # DELETE /prune_types/1.json
  def destroy
    @prune_type.destroy
    respond_to do |format|
      format.html { redirect_to prune_types_url, notice: 'Prune type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prune_type
      @prune_type = PruneType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prune_type_params
      params.require(:prune_type).permit(:name)
    end
end
