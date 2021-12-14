class AddRefToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :user_cart, references: :user_carts
    add_reference :user_carts, :user, references: :users
  end


  create_table :user_carts_products, id: false do |t|
    t.belongs_to :user_cart
    t.belongs_to :product
  end  
end
