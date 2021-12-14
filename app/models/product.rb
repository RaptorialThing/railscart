class Product < ApplicationRecord
	has_and_belongs_to_many :user_cart
	belongs_to :user
end
