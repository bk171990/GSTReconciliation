class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    if current_user.role == 'Party'
     @customers = current_user.party.customers
    else
    @customers = Customer.all
    end
  end

  def add_item
   @customer = Customer.new
   @customer.items.build
   @invoice = Invoice.new
   @invoice.invoice_no = Invoice.set_invoice_no
   @customers = CustomerItem.all
  end

  def add
    CustomerItem.create(:customer_id => params[:customer][:id],:item_id => params[:customer][:items][:item_id])
     redirect_to '/customers/add_item'
  end



    #  @customer = Customer.new
    #  byebug
    # if params[:add_item]
    #    @customer.items.build
    # else
    
    # customer_id =  params[:customer_item][:item_id]
    # item_id = params[:customer_item][:item_id]
    # customer_item = CustomerItem.find_or_initialize_by(customer_id: params[:customer_item][:item_id], item_id: params[:customer_item][:item_id])
    # customer_item.invoice_date = params[:customer_item][:invoice_date]
    # customer_item.serial_no = params[:customer_item][:serial_no]
    # customer_item.eway_bill = params[:customer_item][:eway_bill]
    # customer_item.transportation_mode = params[:customer_item][:transportation_mode]
    # customer_item.vehicle_no = params[:customer_item][:vehicle_no]
    # customer_item.date = params[:customer_item][:date]
    # customer_item.time_of_supply = params[:customer_item][:time_of_supply]
    # customer_item.place_of_supply = params[:customer_item][:place_of_supply]
    # customer_item.save
    
  
   # render :action => 'add_item'


  def load_customer_data
    @customer = Customer.find_by_id(params[:customer_id]).present? ? Customer.find(params[:customer_id]) : Customer.unscoped.find_by_id(params[:customer_id])
    render :json => [ @customer.address, @customer.gstin_no_reg, @customer.cust_pan_no]
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)
    if current_user.role == 'Party'
       @customer.update!(:party_id => current_user.party.id) 
       redirect_to customers_path
      else
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end
end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:customer_name, :gstin_no_reg, :arn_no, :address, :cust_place_of_supply, :cust_name_of_commodity_supplied,
       :cust_tarrif_no, :cust_rate_of_tax, :cust_name_of_service, :cust_serv_acc_code, :cust_pan_no,item_attributes:[:dogns, :item_hsn_no, :uom, :qty,:rate,:taxable_value])
    end
end
