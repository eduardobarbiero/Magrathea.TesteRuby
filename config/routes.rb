Rails.application.routes.draw do
  resources :hashtags
  
  root to: 'home#index'
end
