class ProductsUserCartController < ApplicationController
	def destroy
		@product_user_cart = ProductsUserCart.find_by(product_id: params[:id])
		@product_user_cart.destroy

		id = User.find(current_user.id).user_cart.id
		redirect_to user_cart_path(id)
	end	
end
