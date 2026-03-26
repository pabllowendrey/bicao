Rails.application.routes.draw do
  resources :products
  root to: 'home#index'
  get '/home', to: 'home#index'
  resources :type_products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
