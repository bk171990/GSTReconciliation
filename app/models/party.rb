class Party < ApplicationRecord

	after_save :create_user_account
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    def create_user_account
    	@user = User.create!(first_name: self.party_name, username: self.email, party_id: self.id, password: self.party_no, role: 'Party',email: self.email)
    end

   def self.set_party_no
    date = Date.today.strftime('%Y%m%d')
    if Party.first.nil?
      'S' + date.to_s + '1'
    else
      last_id = Party.last.id.next
      'S' + date.to_s + last_id.to_s
    end
  end
end
