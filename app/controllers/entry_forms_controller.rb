class EntryFormsController < ApplicationController
  before_action :set_entry_form, only: [:show, :edit, :update, :destroy]

  # GET /entry_forms
  # GET /entry_forms.json
  def index
    @entry_forms = EntryForm.all
  end

  # GET /entry_forms/1
  # GET /entry_forms/1.json
  def show
  end

  # GET /entry_forms/new
  def new
    @entry_form = EntryForm.new
  end

  # GET /entry_forms/1/edit
  def edit
  end

  # POST /entry_forms
  # POST /entry_forms.json
  def create
    @entry_form = EntryForm.new(entry_form_params)

    respond_to do |format|
      if @entry_form.save
        format.html { redirect_to @entry_form, notice: 'Entry form was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entry_form }
      else
        format.html { render action: 'new' }
        format.json { render json: @entry_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_forms/1
  # PATCH/PUT /entry_forms/1.json
  def update
    respond_to do |format|
      if @entry_form.update(entry_form_params)
        format.html { redirect_to @entry_form, notice: 'Entry form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entry_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_forms/1
  # DELETE /entry_forms/1.json
  def destroy
    @entry_form.destroy
    respond_to do |format|
      format.html { redirect_to entry_forms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_form
      @entry_form = EntryForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_form_params
      params.require(:entry_form).permit(:contact, :organization, :telephone, :email, :food_amount, :food_other, :electricity, :internet, :seminar)
    end
end
