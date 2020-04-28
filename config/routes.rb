Rails.application.routes.draw do
  get 'users/index'
  root 'management#index'
  
  resources :management, only:[:index]
  resources :users, only:[:index, :new, :create]
end
