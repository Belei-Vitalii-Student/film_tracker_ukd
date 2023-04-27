Rails.application.routes.draw do
  devise_for :users
  
  root 'movies#index'

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'

  resources :movies
  resources :comments, only: [:create]
end
