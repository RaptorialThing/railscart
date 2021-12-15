class UserCart < ApplicationRecord
	has_many :products_user_carts
	has_many :products, :through => :products_user_carts
	belongs_to :user
end
