class Product < ApplicationRecord
	has_many :products_user_carts
	has_many :user_cart, :through => :products_user_carts
	belongs_to :user
end
