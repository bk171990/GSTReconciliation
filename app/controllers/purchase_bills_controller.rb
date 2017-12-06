class PurchaseBillsController < ApplicationController



  def index
    @purchase_bill_invoices = PurchaseBill.all
  end

  def new
    @purchase_bill_invoice = PurchaseBill.new
    @purchase_bill_invoice.purchase_bill_items.build # build ingredient attributes, nothing new here
    @purchase_bill_invoice.purchase_no = PurchaseBill.set_purchase_no
 	
    @items = Item.all
  end

  def create
    @purchase_bill_invoice = PurchaseBill.new(purchase_bill_invoice_params)
      if @purchase_bill_invoice.save
        flash[:notice] = "Successfully Created purchase_bill_Invoice"
        redirect_to @purchase_bill_invoice and return
      end
  end

  def destroy
    @purchase_bill_invoice = PurchaseBill.find(params[:id])
    @purchase_bill_invoice.destroy
    flash[:notice] = "Successfully destroyed purchase_bill_Invoice"
    redirect_to receipes_url
  end

  def show
    @purchase_bill_invoice = PurchaseBill.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
  end

def show_invoice
       @purchase_bill_invoice = PurchaseBill.find(params[:id])
      respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show_invoice.pdf.erb"   # Excluding ".pdf" extension.
      end
    end
end
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_bill_invoice_params
      params.require(:purchase_bill).permit(:customer_id, :purchase_bill_invoice_no,:date,purchase_bill_items_attributes:[ :unit_price, :quantity,:item_id,:rate, :qty, :net_amt, :sgst, :cgst, :tax_rate, :net_amount, :tax_amt, :total_amt,:_destroy])
    end
end
    # Never trust parameters from the scary internet, only allow the white list through.
    # def purchase_bill_invoice_params
      # params.require(:purchase_bill_invoice).permit(:customer_id, :purchase_bill_invoice_no,:date, purchase_bill_invoice_items_attributes: purchase_bill_InvoiceItem.attribute_names.map(&:to_sym).push(:_destroy))
      # purchase_bill_invoice_items_attributes:[:number,:item_id,:_destory]
    # end

