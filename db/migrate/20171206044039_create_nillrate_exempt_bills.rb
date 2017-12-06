class CreateNillrateExemptBills < ActiveRecord::Migration[5.1]
  def change
    create_table :nillrate_exempt_bills do |t|
	  t.integer :purchase_no  
      t.date :date
 
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
