class InvoicesController < ApplicationController

	def new
		@invoice = Invoice.new
		@invoice.invoice_items.build
		@invoice.invoice_no = Invoice.set_invoice_no
	end

	def create
		
		@invoice = Invoice.new(invoice_params)
		 if params[:add_item]
           @invoice.invoice_items.build
         else
         	if @invoice.save

         	 flash[:notice] = "Successfully created ."
         	 redirect_to new_item_path and return
	        end
	    end
	     render :action => 'new'
    end

    private
  

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:customer_id, :invoice_no,:date, invoice_items_attributes:[:number,:item_id])
    end
end