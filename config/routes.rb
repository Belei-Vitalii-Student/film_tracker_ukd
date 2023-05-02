Rails.application.routes.draw do
  devise_for :users
  
  root 'movies#index'

  get 'new', to: 'pages#new_film'
  
  resources :movies
  resources :comments
  resources :stars, only: [:read]
end
