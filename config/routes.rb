Rails.application.routes.draw do

  devise_for :users
  
  root to: "companies#index"

  resources :users
  resources :companies
  resources :customers
  resources :phones
  resources :emails
  resources :addresses
  resources :services
  resources :events

end
