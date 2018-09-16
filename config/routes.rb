Rails.application.routes.draw do
  root to: 'pages#index'

  resources :products
  # get 'pages/index'

  devise_for :users
  resources :users, :only => [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
