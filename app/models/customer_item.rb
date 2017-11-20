class CustomerItem < ApplicationRecord
	scope :shod, ->(id) { where(id: id).take }
	belongs_to :customer
	belongs_to :item
end
