Rails.application.routes.draw do

  devise_for :users
  
  root to: "users#index"

  resources :companies
  resources :customers
  resources :events
  resources :pianos
  resources :services
  resources :schedules
  resources :users

end
