class AddAttachmentImageToGeneralSettings < ActiveRecord::Migration[5.1]
  def self.up
    change_table :general_settings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :general_settings, :image
  end
end
