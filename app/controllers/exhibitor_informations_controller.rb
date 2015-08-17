class ExhibitorInformationsController < ApplicationController
  before_action :set_exhibitor_information, only: [:show, :edit, :update, :destroy]

  # GET /exhibitor_informations
  # GET /exhibitor_informations.json
  def index
    @exhibitor_informations = ExhibitorInformation.all
  end

  # GET /exhibitor_informations/1
  # GET /exhibitor_informations/1.json
  def show
  end

  # GET /exhibitor_informations/new
  def new
    @exhibitor_information = ExhibitorInformation.new
  end

  # GET /exhibitor_informations/1/edit
  def edit
  end

  # POST /exhibitor_informations
  # POST /exhibitor_informations.json
  def create
    @exhibitor_information = ExhibitorInformation.new(exhibitor_information_params)

    respond_to do |format|
      if @exhibitor_information.save
        format.html { redirect_to @exhibitor_information, notice: 'Text skapad' }
        format.json { render action: 'show', status: :created, location: @exhibitor_information }
      else
        format.html { render action: 'new' }
        format.json { render json: @exhibitor_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exhibitor_informations/1
  # PATCH/PUT /exhibitor_informations/1.json
  def update
    respond_to do |format|
      if @exhibitor_information.update(exhibitor_information_params)
        format.html { redirect_to @exhibitor_information, notice: 'Text uppdaterad' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exhibitor_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitor_informations/1
  # DELETE /exhibitor_informations/1.json
  def destroy
    @exhibitor_information.destroy
    respond_to do |format|
      format.html { redirect_to exhibitor_informations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibitor_information
      @exhibitor_information = ExhibitorInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exhibitor_information_params
      params.require(:exhibitor_information).permit(:header, :content)
    end
end
