class ChartedAccountant < ApplicationRecord
    
    after_save :create_user_account
    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    def create_user_account
      byebug
    	@user = User.create!(first_name: self.name, username: self.email, charted_accountant_id: self.id, password: self.ca_no, role: 'ChartedAccountant', email: self.email)
    end

  def self.set_ca_no
    date = Date.today.strftime('%Y%m%d')
    if Party.first.nil?
      'S' + date.to_s + '1'
    else
      last_id = Party.last.id.next
      'S' + date.to_s + last_id.to_s
    end
  end
end
