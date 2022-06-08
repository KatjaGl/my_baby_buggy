Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index,:show, :new, :create, :destroy, :edit, :update] do
  resources :locations, only:[:new , :create]
  end
  resources :categories
  resources :locations, only: [:index,:show , :destroy, :edit, :update]
  resources :users
  # get '/products', to: 'products#index'
  # get '/users/new', to: 'users#new'
  # get '/products/:id', to: 'products#show'
  # get '/products/:id/locations/new', to: 'locations#new'
  # post '/products/:id/locations', to: 'locations#create'
end
