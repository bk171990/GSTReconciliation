class ChartedAccountantsController < ApplicationController
  before_action :set_charted_accountant, only: [:show, :edit, :update, :destroy]

  # GET /charted_accountants
  # GET /charted_accountants.json
  def index
    @charted_accountants = ChartedAccountant.all
    @general_setting = GeneralSetting.first
  end

  # GET /charted_accountants/1
  # GET /charted_accountants/1.json
  def show
    @general_setting = GeneralSetting.first
  end

  # GET /charted_accountants/new
  def new
    @general_setting = GeneralSetting.first
    @charted_accountant = ChartedAccountant.new
    @charted_accountant.ca_no = ChartedAccountant.set_ca_no
  end

  # GET /charted_accountants/1/edit
  def edit
    @general_setting = GeneralSetting.first
  end

  # POST /charted_accountants
  # POST /charted_accountants.json
  def create
    @charted_accountant = ChartedAccountant.new(charted_accountant_params)

    respond_to do |format|
      if @charted_accountant.save
        format.html { redirect_to @charted_accountant, notice: 'Charted accountant was successfully created.' }
        format.json { render :show, status: :created, location: @charted_accountant }
      else
        format.html { render :new }
        format.json { render json: @charted_accountant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charted_accountants/1
  # PATCH/PUT /charted_accountants/1.json
  def update
    respond_to do |format|
      if @charted_accountant.update(charted_accountant_params)
        format.html { redirect_to @charted_accountant, notice: 'Charted accountant was successfully updated.' }
        format.json { render :show, status: :ok, location: @charted_accountant }
      else
        format.html { render :edit }
        format.json { render json: @charted_accountant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charted_accountants/1
  # DELETE /charted_accountants/1.json
  def destroy
    @charted_accountant.destroy
    respond_to do |format|
      format.html { redirect_to charted_accountants_url, notice: 'Charted accountant was successfully destroyed.' }
      format.json { head :no_content }
      @general_setting = GeneralSetting.first
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charted_accountant
      @charted_accountant = ChartedAccountant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charted_accountant_params
      params.require(:charted_accountant).permit(:image,:name, :phn_no, :address, :email, :firm_name, :ca_no)
    end
end
