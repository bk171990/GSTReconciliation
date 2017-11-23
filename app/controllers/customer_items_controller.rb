class CustomerItemsController < ApplicationController
  
  def create
     @customer = Customer.new
    if params[:add_item]
       @customer.customer_items.build
    else
      
  	customer_id =  params[:customer_item][:item_id]
  	item_id = params[:customer_item][:item_id]
    customer_item = CustomerItem.find_or_initialize_by(customer_id: params[:customer_item][:item_id], item_id: params[:customer_item][:item_id])
    customer_item.invoice_date = params[:customer_item][:invoice_date]
    customer_item.serial_no = params[:customer_item][:serial_no]
    customer_item.eway_bill = params[:customer_item][:eway_bill]
    customer_item.transportation_mode = params[:customer_item][:transportation_mode]
    customer_item.vehicle_no = params[:customer_item][:vehicle_no]
    customer_item.date = params[:customer_item][:date]
    customer_item.time_of_supply = params[:customer_item][:time_of_supply]
    customer_item.place_of_supply = params[:customer_item][:place_of_supply]
    customer_item.save
    redirect_to '/customers/add_item'
  end
   render :action => 'new'
end

  def destroy
    byebug
  end
end


def create
    @receipe = Receipe.new(receipe_params)
    if params[:add_ingredient]
      # add empty ingredient associated with @recipe
      @receipe.ingredients.build
    elsif params[:remove_ingredient]
      # nested model that have _destroy attribute = 1 automatically deleted by rails
    else
      # save goes like usual
      if @receipe.save
        flash[:notice] = "Successfully created recipe."
        redirect_to @receipe and return
      end
    end
    render :action => 'new'
  end