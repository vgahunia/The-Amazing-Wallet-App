Rails.application.routes.draw do


  resources :users
  resources :cards
  root 'users#new'
  
end
