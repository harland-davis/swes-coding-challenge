class OfficesController < ApplicationController
  before_action :get_building 
  before_action :set_office, only: [:show :edit :update :destroy ]

  # GET /offices or /offices.json
  def index
    @offices = @buildings.offices
  end

  # GET /offices/1 or /offices/1.json
  def show
    @office = Office.find(params[:id])
  end

  # GET /offices/new
  def new
    @office = @building.offices.build
  end

  # GET /offices/1/edit
  def edit
  end

  # POST /offices or /offices.json
  def create
    @office = @building.offices.build(office_params)

    respond_to do |format|
      if @office.save
        format.html { redirect_to building_offices_path(@building), notice: "Office was successfully created." }
        format.json { render :show, status: :created, location: @office }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offices/1 or /offices/1.json
  def update
    respond_to do |format|
      if @office.update(office_params)
        format.html { redirect_to building_office_path(@building), notice: "Office was successfully updated." }
        format.json { render :show, status: :ok, location: @office }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offices/1 or /offices/1.json
  def destroy
    @office.destroy
    respond_to do |format|
      format.html { redirect_to building_offices_path(@building), notice: "Office was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def get_building
      @building = Building.find(params[:building_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_office
      @office = @building.office.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def office_params
      params.require(:office).permit(:building_id, :company_id, :floor)
    end
end
