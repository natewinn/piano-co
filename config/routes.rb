Rails.application.routes.draw do

  devise_for :users
  
  root to: "customers#index"

  resources :users
  resources :companies
  resources :customers
  resources :phones
  resources :emails
  resources :addresses
  resources :services
  resources :events
  resources :pianos

end
