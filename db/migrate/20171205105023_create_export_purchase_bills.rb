class CreateExportPurchaseBills < ActiveRecord::Migration[5.1]
  def change
    create_table :export_purchase_bills do |t|
	  t.integer :purchase_no  
      t.date :date
 
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
