class UserCartsController < ApplicationController
	before_action :authenticate_user!
	def create
		# @user_cart = UserCart.first_or_create(user_id: current_user.id)
		# @product_user = ProductsUserCart.create(user_cart_id:@user_cart.id, product_id: params[:id])
		# if @product_user.save
		#    redirect_to @user_cart
	 #    else
	 #    	flash[:notice] = "Cant add to cart"
	 #    	redirect_back fallback_location: products_path
	 #    end	
	 	@user_cart = UserCart.first_or_create(user_id: current_user.id)
	end	


	def show
		@user_cart = UserCart.find(params[:id])
		@products = @user_cart.products
	end
end
