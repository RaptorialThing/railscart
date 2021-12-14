Rails.application.routes.draw do
  resources :user_carts
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: "products#index"
 get "user_carts/add/:id", to: "user_carts#add", as: "user_cart_add"
end
