class BushTypesController < ApplicationController
  before_action :set_bush_type, only: [:show, :edit, :update, :destroy]

  # GET /bush_types
  # GET /bush_types.json
  def index
    @bush_types = BushType.all
  end

  # GET /bush_types/1
  # GET /bush_types/1.json
  def show
  end

  # GET /bush_types/new
  def new
    @bush_type = BushType.new
  end

  # GET /bush_types/1/edit
  def edit
  end

  # POST /bush_types
  # POST /bush_types.json
  def create
    @bush_type = BushType.new(bush_type_params)

    respond_to do |format|
      if @bush_type.save
        format.html { redirect_to @bush_type, notice: 'Bush type was successfully created.' }
        format.json { render :show, status: :created, location: @bush_type }
      else
        format.html { render :new }
        format.json { render json: @bush_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bush_types/1
  # PATCH/PUT /bush_types/1.json
  def update
    respond_to do |format|
      if @bush_type.update(bush_type_params)
        format.html { redirect_to @bush_type, notice: 'Bush type was successfully updated.' }
        format.json { render :show, status: :ok, location: @bush_type }
      else
        format.html { render :edit }
        format.json { render json: @bush_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bush_types/1
  # DELETE /bush_types/1.json
  def destroy
    @bush_type.destroy
    respond_to do |format|
      format.html { redirect_to bush_types_url, notice: 'Bush type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bush_type
      @bush_type = BushType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bush_type_params
      params.require(:bush_type).permit(:name)
    end
end
