Rails.application.routes.draw do

  root 'movies#index'

  resources :movies
  resources :directors
  resources :actors
  resources :users
  resources :sessions

end
