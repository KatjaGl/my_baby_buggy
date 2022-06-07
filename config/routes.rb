Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :new, :create]
  resources :categories
  resources :locations
  resources :users
  # get '/products', to: 'products#index'
  # get '/users/new', to: 'users#new'
  # get '/products/:id', to: 'products#show'
  # get '/products/:id/locations/new', to: 'locations#new'
  # post '/products/:id/locations', to: 'locations#create'
end
