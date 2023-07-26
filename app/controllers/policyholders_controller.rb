class PolicyholdersController < ApplicationController
  before_action :set_policyholder, only: %i[ show edit update destroy ]

  # GET /policyholders or /policyholders.json
  def index
    @policyholders = Policyholder.all
  end

  # GET /policyholders/1 or /policyholders/1.json
  def show
    @ppolicyholder = Policyholder.find(params[:id])
    @pcontract = @ppolicyholder.contracts
  end

  # GET /policyholders/new
  def new
    @policyholder = Policyholder.new
  end

  # GET /policyholders/1/edit
  def edit
  end

  # POST /policyholders or /policyholders.json
  def create
    @policyholder = Policyholder.new(policyholder_params)

    respond_to do |format|
      if @policyholder.save
        format.html { redirect_to policyholder_url(@policyholder), notice: "Policyholder was successfully created." }
        format.json { render :show, status: :created, location: @policyholder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @policyholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policyholders/1 or /policyholders/1.json
  def update
    respond_to do |format|
      if @policyholder.update(policyholder_params)
        format.html { redirect_to policyholder_url(@policyholder), notice: "Policyholder was successfully updated." }
        format.json { render :show, status: :ok, location: @policyholder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @policyholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policyholders/1 or /policyholders/1.json
  def destroy
    @policyholder.destroy

    respond_to do |format|
      format.html { redirect_to policyholders_url, notice: "Policyholder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policyholder
      @policyholder = Policyholder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def policyholder_params
      params.require(:policyholder).permit(:name, :birthdate, :email, :phone, :street, :city, :zip)
    end
end
