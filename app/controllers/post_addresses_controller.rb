class PostAddressesController < ApplicationController
  before_action :set_post_address, only: [:show, :edit, :update, :destroy]

  # GET /post_addresses
  # GET /post_addresses.json
  def index
    @post_addresses = PostAddress.all
  end

  # GET /post_addresses/1
  # GET /post_addresses/1.json
  def show
  end

  # GET /post_addresses/new
  def new
    @post_address = PostAddress.new
  end

  # GET /post_addresses/1/edit
  def edit
  end

  # POST /post_addresses
  # POST /post_addresses.json
  def create
    @post_address = PostAddress.new(post_address_params)

    respond_to do |format|
      if @post_address.save
        format.html { redirect_to @post_address, notice: 'Adress skapad.' }
        format.json { render action: 'show', status: :created, location: @post_address }
      else
        format.html { render action: 'new' }
        format.json { render json: @post_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_addresses/1
  # PATCH/PUT /post_addresses/1.json
  def update
    respond_to do |format|
      if @post_address.update(post_address_params)
        format.html { redirect_to @post_address, notice: 'Adress uppdaterad.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_addresses/1
  # DELETE /post_addresses/1.json
  def destroy
    @post_address.destroy
    respond_to do |format|
      format.html { redirect_to post_addresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_address
      @post_address = PostAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_address_params
      params.require(:post_address).permit(:municipality, :company, :address, :post_number_and_city)
    end
end
