class CreateBusinessSales < ActiveRecord::Migration[5.1]
  def change
    create_table :business_sales do |t|
      t.date :invoice_date
      t.string :serial_no
      t.string :gstin_no
      t.string :eway_bill
      t.string :transportation_mode
      t.string :vehicle_no
      t.date :date
      t.string :time_of_supply
      t.string :place_of_supply
      t.string :total_invoice

      t.timestamps
    end
  end
end
