Rails.application.routes.draw do
  root 'home#index'
  get 'user/login'
  get 'user/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
