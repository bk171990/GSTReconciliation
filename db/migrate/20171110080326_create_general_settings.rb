class CreateGeneralSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :general_settings do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_no
      t.string :email
      t.string :business_description
      t.string :gst_no
      t.string :pan
      t.string :name_of_service
      t.string :service_acc_code
      t.string :rate_of_tax
      t.string :address
      t.string :state_name
      t.string :state_code

      t.timestamps
    end
  end
end
