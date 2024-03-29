class GardenGroupsController < ApplicationController
  before_action :set_garden_group, only: [:show, :edit, :update, :destroy]

  # GET /garden_groups
  # GET /garden_groups.json
  def index
    @garden_groups = GardenGroup.all
  end

  # GET /garden_groups/1
  # GET /garden_groups/1.json
  def show
  end

  # GET /garden_groups/new
  def new
    @garden_group = GardenGroup.new
  end

  # GET /garden_groups/1/edit
  def edit
  end

  # POST /garden_groups
  # POST /garden_groups.json
  def create
    @garden_group = GardenGroup.new(garden_group_params)

    respond_to do |format|
      if @garden_group.save
        format.html { redirect_to @garden_group, notice: 'Garden group was successfully created.' }
        format.json { render :show, status: :created, location: @garden_group }
      else
        format.html { render :new }
        format.json { render json: @garden_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garden_groups/1
  # PATCH/PUT /garden_groups/1.json
  def update
    respond_to do |format|
      if @garden_group.update(garden_group_params)
        format.html { redirect_to @garden_group, notice: 'Garden group was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden_group }
      else
        format.html { render :edit }
        format.json { render json: @garden_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garden_groups/1
  # DELETE /garden_groups/1.json
  def destroy
    @garden_group.destroy
    respond_to do |format|
      format.html { redirect_to garden_groups_url, notice: 'Garden group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden_group
      @garden_group = GardenGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garden_group_params
      params.require(:garden_group).permit(:name)
    end
end
