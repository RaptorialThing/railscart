class ProductsUserCart < ApplicationRecord
	belongs_to :product
	belongs_to :user_cart
end
