Rails.application.routes.draw do
  get 'cards/show'
  get 'shops/index'
  get 'shops/show'
  resources :products do
    collection { post:import }
  end
  resources :shops, only:[:index, :show]

  root 'sessions#new'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
