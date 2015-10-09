Rails.application.routes.draw do

	post '/share' => 'cards#share'
  resources :users
  resources :cards
  root 'users#new'
  
end
