class ExemptInvoicesController < ApplicationController
  def index
   @exempt_invoices = ExemptInvoice.all
 end

 def new
  @exempt_invoice = ExemptInvoice.new
    @exempt_invoice.exempt_invoice_items.build # build ingredient attributes, nothing new here
    @exempt_invoice.exempt_invoice_number = ExemptInvoice.set_invoice_no
    @items = Item.all
  end

  def create
    @exempt_invoice = ExemptInvoice.new(export_invoice_params)
    if @exempt_invoice.save
      flash[:notice] = "Successfully Created Invoice"
      redirect_to @exempt_invoice and return
    end
  end

  def edit
   @exempt_invoice = ExemptInvoice.find(params[:id])
  end

 def update
  @exempt_invoice = ExemptInvoice.find(params[:id])
  respond_to do |format|
    if @exempt_invoice.update(export_invoice_params)
      format.html { redirect_to invoice_path, notice: 'invoice was successfully updated.' }
      format.json { render :index, status: :ok, location: @exempt_invoice }
    else
      format.html { render :edit }
      format.json { render json: @exempt_invoice.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @exempt_invoice = ExemptInvoice.find(params[:id])
  @exempt_invoice.destroy
  flash[:notice] = "Successfully destroyed Invoice"
  redirect_to @exempt_invoice
end

def show
  @exempt_invoice = ExemptInvoice.find(params[:id])
  respond_to do |format|
    format.html
    format.pdf do
        render pdf: "show_exempt_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
  end

  def show_exempt_invoice
   @exempt_invoice = ExemptInvoice.find(params[:id])
   respond_to do |format|
    format.html
    format.pdf do
        render pdf: "show_exempt_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
  end
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def export_invoice_params
      params.require(:exempt_invoice).permit(:customer_id, :exempt_invoice_number,:exempt_invoice_date,exempt_invoice_items_attributes:[ :unit_price, :quantity,:item_id,:rate, :qty, :net_amt, :sgst, :cgst, :tax_rate, :tax_amt, :total_amt,:_destroy])
    end
end
