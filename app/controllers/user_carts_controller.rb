class UserCartsController < ApplicationController
	before_action :authenticate_user!
	def add
		product = Product.find(params[:id])
		@user_cart = product.user_cart.find_or_create_by(user_id: current_user.id)
		redirect_to @user_cart
	end	


	def show
		@user_cart = UserCart.find(params[:id])
		@products = @user_cart.products
	end


	def destroy
		@user_cart = UserCart.find(params[:id])
		@user_cart.destroy

		redirect_to products_path
	end	
end
