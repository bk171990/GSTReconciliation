class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  scope :shod, ->(id) { where(id: id).take }
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  scope :role_wise_users, ->(role) { where(role: role) }
  belongs_to :general_setting
  belongs_to :charted_accountant
  belongs_to :party


  def create_general_setting
    role = 'Party'
    role = 'SuperAdmin' if id == 1
    gs = GeneralSetting.create(name_of_service: 'GST ')
    update(general_setting_id: gs.id, role: role)
  end

  # def create_user_charted_accountant(ca_no, email)
  #   employee_number.each do |emp_no|
  #     UserChartedAccountant.create(email: email, ca_no: ca_no)
  #   end
  # end

    def self.current
    Thread.current[:user]
  end

  # setter for current user
  def self.current=(user)
    Thread.current[:user] = user
  end
end
