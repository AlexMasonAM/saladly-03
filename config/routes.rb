Rails.application.routes.draw do

  root to: 'ingredients#index'

  get '/signup' => 'users#new', as: :signup

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout

  resources :users
  resources :ingredients
  resources :employees

end