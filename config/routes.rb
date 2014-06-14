Rails.application.routes.draw do

  devise_for :users
  
  root to: "users#index"

  resources :users
  resources :companies
  resources :customers
  resources :phones
  resources :emails
  resources :addresses
end
