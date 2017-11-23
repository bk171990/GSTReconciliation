class InvoiceItemsController < ApplicationController
	
	def add
		byebug
	  @invoice_item = Invoice_item.new
	  InvoiceItem.create(:customer_id => params[:customer][:customer_id],:item_id => params[:customer][:invoice_items][:item_id])
	  
	end
end
