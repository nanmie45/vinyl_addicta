Rails.application.routes.draw do
  
  resources :categories
  root 'pages#index'

  resources :products
  # get 'pages/index'

  devise_for :users
  resources :users, :only => [:index, :show]

  resources :carts, only: [:show]

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
