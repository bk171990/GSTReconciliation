class AddAttachmentImageToChartedAccountants < ActiveRecord::Migration[5.1]
  def self.up
    change_table :charted_accountants do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :charted_accountants, :image
  end
end
