class InvoicesController < ApplicationController

  def index
    @invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
    @invoice.invoice_items.build # build ingredient attributes, nothing new here
    @invoice.invoice_no = Invoice.set_invoice_no
    @items = Item.all
  end

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      flash[:notice] = "Successfully Created Invoice"
      redirect_to @invoice and return
    end
  end

  def edit
   @invoice = Invoice.find(params[:id])
 end

 def update
  @invoice = Invoice.find(params[:id])
  respond_to do |format|
    if @invoice.update(invoice_params)
      format.html { redirect_to invoice_path, notice: 'invoice was successfully updated.' }
      format.json { render :index, status: :ok, location: @invoice }
    else
      format.html { render :edit }
      format.json { render json: @invoice.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @invoice = Invoice.find(params[:id])
  @invoice.destroy
  flash[:notice] = "Successfully destroyed Invoice"
  redirect_to @invoice
end

def show
  @invoice = Invoice.find(params[:id])
  respond_to do |format|
    format.html
    format.pdf do
        render pdf: "show_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
  end

  def show_invoice
   @invoice = Invoice.find(params[:id])
   respond_to do |format|
    format.html
    format.pdf do
        render pdf: "show_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
  end
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:id,:gstr_holder,:customer_id, :invoice_no,:date,invoice_items_attributes:[ :unit_price, :quantity,:item_id,:rate, :qty, :net_amt, :sgst, :cgst, :tax_rate, :tax_amt, :total_amt,:_destroy])
    end
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    # def invoice_params
      # params.require(:invoice).permit(:customer_id, :invoice_no,:date, invoice_items_attributes: InvoiceItem.attribute_names.map(&:to_sym).push(:_destroy))
      # invoice_items_attributes:[:number,:item_id,:_destory]
    # end