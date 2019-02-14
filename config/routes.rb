Rails.application.routes.draw do
  resources :hashtags
  resources :messages, only: [:index]
  
  root to: 'home#index'
end
