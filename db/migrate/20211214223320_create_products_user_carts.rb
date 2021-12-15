class CreateProductsUserCarts < ActiveRecord::Migration[6.1]
  drop_table :products_user_carts

  

  def change
    create_table :products_user_carts do |t|
      t.belongs_to :user_cart
      t.belongs_to :product
      t.timestamps
    end
  end
end
