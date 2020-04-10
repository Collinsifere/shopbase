Rails.application.routes.draw do
  resources :kproducts
  resources :names
  get 'cards/show'
  get 'shops/index'
  get 'shops/show'
  resources :products
  resources :shops, only:[:index, :show]
  
  
  
  
  
  root 'products#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
