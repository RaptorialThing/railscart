class ProductsUserCartController < ApplicationController
	def create
		cart_id = User.find(current_user.id).user_cart.id
		@product_user_cart = ProductsUserCart.new(product_id: params[:product_id], user_cart_id: cart_id)
		if !@product_user_cart.save
			flash[:notice] = "Cant add to cart"
		end
		redirect_to user_cart_path(cart_id)
	end	


	def destroy
		@user = User.find(current_user.id)
		@product_user_cart = @user.user_cart.products_user_carts
		@product_user_cart = @product_user_cart.where(product_id: params[:id])
		@product_user_cart.first.destroy
		@user_cart = User.find(current_user.id).user_cart
		redirect_to @user_cart
	end	
end
