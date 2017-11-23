class AddColumFieldsToCustomerItems < ActiveRecord::Migration[5.1]
  def change
    add_column :customer_items, :invoice_date, :date
    add_column :customer_items, :serial_no, :string
    add_column :customer_items, :gstin_no, :string
    add_column :customer_items, :eway_bill, :string
    add_column :customer_items, :transportation_mode, :string
    add_column :customer_items, :vehicle_no, :string
    add_column :customer_items, :date, :date
    add_column :customer_items, :time_of_supply, :string
    add_column :customer_items, :place_of_supply, :string
    add_column :customer_items, :total_invoice, :string
  end
end
