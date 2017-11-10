class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.string :party_name
      t.string :party_gstin_no
      t.string :party_arn_no
      t.string :party_address
      t.string :place_of_supply
      t.string :commodity_name
      t.string :tarrif_no
      t.string :hsn_no
      t.string :rate_of_tax
      t.string :name_service
      t.string :service_acc_code
      t.string :party_pan_no
      t.string :state_name
      t.string :state_code
      t.string :ca_name
      t.string :ca_contact

      t.timestamps
    end
  end
end
