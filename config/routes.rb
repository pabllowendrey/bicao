Rails.application.routes.draw do

  resources :administrators
  resources :customers
  resources :products
  resources :type_products
  
  resources :orders do
    resources :product_orders
  end
  
  get '/admin', to: 'admin#index'
  get '/login', to: 'login#index'
  post '/login/logging', to: 'login#logging'
  get '/login/logout', to: 'login#logout'

  #root to: 'home#index'
  get '/home', to: 'home#index'

end
