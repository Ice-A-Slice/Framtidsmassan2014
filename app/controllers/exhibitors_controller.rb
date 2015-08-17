class ExhibitorsController < ApplicationController
  before_action :set_exhibitor, only: [:show, :edit, :update, :destroy]

  # GET /exhibitors
  # GET /exhibitors.json
  def index
    @category = Category.all
    @exhibitors = Exhibitor.all(:order => 'title')

  end

  # GET /exhibitors/1
  # GET /exhibitors/1.json
  def show

  end

  # GET /exhibitors/new
  def new
    #@category = Category.all.map(&:id)
    @exhibitor = Exhibitor.new
  end

  # GET /exhibitors/1/edit
  def edit
  end

  # POST /exhibitors
  # POST /exhibitors.json
  def create
    @exhibitor = Exhibitor.new(exhibitor_params)


    respond_to do |format|
      if @exhibitor.save
        format.html { redirect_to @exhibitor, notice: "skapat #{exhibitor_params}" }
        format.json { render action: 'show', status: :created, location: @exhibitor }
      else
        format.html { render action: 'new' }
        format.json { render json: @exhibitor.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /exhibitors/1
  # PATCH/PUT /exhibitors/1.json
  def update
    respond_to do |format|
      if @exhibitor.update(exhibitor_params)
        format.html { redirect_to @exhibitor, notice: 'Utstallare uppdaterad' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exhibitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitors/1
  # DELETE /exhibitors/1.json
  def destroy
    @exhibitor.destroy
    respond_to do |format|
      format.html { redirect_to exhibitors_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_exhibitor
    @exhibitor = Exhibitor.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exhibitor_params
    params.require(:exhibitor).permit(:title, :position, :link, :category_id)
  end
end
