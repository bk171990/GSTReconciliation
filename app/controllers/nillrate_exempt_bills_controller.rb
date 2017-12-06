class NillrateExemptBillsController < ApplicationController



  def index
    @nillrate_exempt_bill_invoices = NillrateExemptBill.all
  end

  def new
    @nillrate_exempt_bill_invoice = NillrateExemptBill.new
    @nillrate_exempt_bill_invoice.nillrate_exempt_bill_items.build # build ingredient attributes, nothing new here
    @nillrate_exempt_bill_invoice.purchase_no = NillrateExemptBill.set_purchase_no
 	
    @items = Item.all
  end

  def create
    @nillrate_exempt_bill_invoice = NillrateExemptBill.new(nillrate_exempt_bill_invoice_params)
      if @nillrate_exempt_bill_invoice.save
        flash[:notice] = "Successfully Created nillrate_exempt_bill_Invoice"
        redirect_to @nillrate_exempt_bill_invoice and return
      end
  end

  def destroy
    @nillrate_exempt_bill_invoice = NillrateExemptBill.find(params[:id])
    @nillrate_exempt_bill_invoice.destroy
    flash[:notice] = "Successfully destroyed nillrate_exempt_bill_Invoice"
    redirect_to receipes_url
  end

  def show
    @nillrate_exempt_bill_invoice = NillrateExemptBill.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
  end

def show_invoice
       @nillrate_exempt_bill_invoice = NillrateExemptBill.find(params[:id])
      respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
end
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def nillrate_exempt_bill_invoice_params
      params.require(:nillrate_exempt_bill).permit(:customer_id, :nillrate_exempt_bill_invoice_no, :date,nillrate_exempt_bill_items_attributes:[ :unit_price, :item_id, :quantity, :rate, :qty, :net_amt, :sgst, :cgst, :tax_rate, :net_amount, :tax_amt, :total_amt,:_destroy])
    end
end
    # Never trust parameters from the scary internet, only allow the white list through.
    # def nillrate_exempt_bill_invoice_params
      # params.require(:nillrate_exempt_bill_invoice).permit(:customer_id, :nillrate_exempt_bill_invoice_no,:date, nillrate_exempt_bill_invoice_items_attributes: nillrate_exempt_bill_InvoiceItem.attribute_names.map(&:to_sym).push(:_destroy))
      # nillrate_exempt_bill_invoice_items_attributes:[:number,:item_id,:_destory]
    # end

