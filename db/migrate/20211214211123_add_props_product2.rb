class AddPropsProduct2 < ActiveRecord::Migration[6.1]
  create_table :products_user_carts, id: false do |t|
    t.belongs_to :user_cart
    t.belongs_to :product
  end 
end
