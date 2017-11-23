class BusinessSalesController < ApplicationController
  before_action :set_business_sale, only: [:show, :edit, :update, :destroy]

  # GET /business_sales
  # GET /business_sales.json
  def index
    @business_sales = BusinessSale.all
  end

  # GET /business_sales/1
  # GET /business_sales/1.json
  def show
  end

  # GET /business_sales/new
  def new
    @business_sale = BusinessSale.new
  end

  # GET /business_sales/1/edit
  def edit
  end

  # POST /business_sales
  # POST /business_sales.json
  def create
    @business_sale = BusinessSale.new(business_sale_params)

    respond_to do |format|
      if @business_sale.save
        format.html { redirect_to @business_sale, notice: 'Business sale was successfully created.' }
        format.json { render :show, status: :created, location: @business_sale }
      else
        format.html { render :new }
        format.json { render json: @business_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_sales/1
  # PATCH/PUT /business_sales/1.json
  def update
    respond_to do |format|
      if @business_sale.update(business_sale_params)
        format.html { redirect_to @business_sale, notice: 'Business sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_sale }
      else
        format.html { render :edit }
        format.json { render json: @business_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_sales/1
  # DELETE /business_sales/1.json
  def destroy
    @business_sale.destroy
    respond_to do |format|
      format.html { redirect_to business_sales_url, notice: 'Business sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_sale
      @business_sale = BusinessSale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_sale_params
      params.require(:business_sale).permit(:invoice_date, :serial_no, :gstin_no, :eway_bill, :transportation_mode, :vehicle_no, :date, :time_of_supply, :place_of_supply, :total_invoice)
    end
end
