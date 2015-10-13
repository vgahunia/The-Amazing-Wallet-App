Rails.application.routes.draw do

  get 'sessions/new'

  get 'signup' => 'users#new'
  post   'login'   => 'sessions#create'

	post '/share' => 'cards#share'
	delete 'logout'  => 'sessions#destroy'
	
  resources :users
  resources :cards
  root 'sessions#new'
  
end
