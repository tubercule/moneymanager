class PayementMethodsController < ApplicationController
  before_action :set_payement_method, only: [:show, :edit, :update, :destroy]

  # GET /payement_methods
  # GET /payement_methods.json
  def index
    @payement_methods = PayementMethod.all
  end

  # GET /payement_methods/1
  # GET /payement_methods/1.json
  def show
  end

  # GET /payement_methods/new
  def new
    @payement_method = PayementMethod.new
  end

  # GET /payement_methods/1/edit
  def edit
  end

  # POST /payement_methods
  # POST /payement_methods.json
  def create
    @payement_method = PayementMethod.new(payement_method_params)

    respond_to do |format|
      if @payement_method.save
        format.html { redirect_to @payement_method, notice: 'Payement method was successfully created.' }
        format.json { render action: 'show', status: :created, location: @payement_method }
      else
        format.html { render action: 'new' }
        format.json { render json: @payement_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payement_methods/1
  # PATCH/PUT /payement_methods/1.json
  def update
    respond_to do |format|
      if @payement_method.update(payement_method_params)
        format.html { redirect_to @payement_method, notice: 'Payement method was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @payement_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payement_methods/1
  # DELETE /payement_methods/1.json
  def destroy
    @payement_method.destroy
    respond_to do |format|
      format.html { redirect_to payement_methods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payement_method
      @payement_method = PayementMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payement_method_params
      params.require(:payement_method).permit(:title)
    end
end
