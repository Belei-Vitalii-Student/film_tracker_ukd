Rails.application.routes.draw do
  devise_for :users
  
  root 'movies#index'

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'new', to: 'pages#new_film'
  
  delete '/movies/:id', to: 'movies#destroy', as: 'movie'

  resources :movies
  resources :comments, only: [:create]
  resources :stars
end
