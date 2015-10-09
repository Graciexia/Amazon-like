Rails.application.routes.draw do
  devise_for :users
  resources :products_orders
  resources :orders
  resources :products
  # resources :users

  get '/prod_by_price/:price_level', to: 'products#search_by_price'

  post '/add_to_cart/:user_id/product/:product_id', to: 'orders#create', as: 'cart'
  put '/remove_from_cart/:order_id/:product_id', to: 'orders#update', as: 'remove'
  delete '/delete/:order_id', to: 'orders#destroy', as: 'delete'

  get '/admin', to: 'orders#admin', as: 'admin'
  get '/admin/:order_id', to: 'orders#admin_show', as: 'admin_show'

  put '/checkout/:order_id', to: 'orders#checkout', as: "checkout"

  root 'products#index'

end
