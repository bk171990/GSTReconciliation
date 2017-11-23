class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :gstin_no_reg
      t.string :arn_no
      t.string :address
      t.string :cust_place_of_supply
      t.string :cust_name_of_commodity_supplied
      t.string :cust_tarrif_no
      t.string :cust_rate_of_tax
      t.string :cust_name_of_service
      t.string :cust_serv_acc_code
      t.string :cust_pan_no

      t.timestamps
    end
  end
end
