class AddRefToUser2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :user, references: :users
  end
end
