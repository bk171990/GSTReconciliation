class InvoiceItemsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def add
		byebug
	    @invoice_item = InvoiceItem.new
        @item = Item.find_by_id(params[:item_id]).present? ? Item.find(params[:item_id]) : Item.unscoped.find_by_id(params[:item_id])
	   Item.shod(params[:item_id]["0"])
	   InvoiceItem.create!(unit_price: params[:item_id]["1"][1], quantity: params[:item_id]["1"][2], net_amt: params[:item_id]["1"][3].to_i , tax_rate: params[:item_id]["1"][4].to_i, tax_amt: [:item_id]["1"][5], total_amt: [:item_id]["1"][6])
	end
end