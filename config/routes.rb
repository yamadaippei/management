Rails.application.routes.draw do
  root 'management#index'
  
  resources :management, only:[:index]
end
