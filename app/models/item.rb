class Item < ApplicationRecord
	scope :shod, ->(id) { where(id: id).take }
end
