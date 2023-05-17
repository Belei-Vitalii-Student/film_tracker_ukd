Rails.application.routes.draw do
  devise_for :users
  as :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root 'movies#index'

  get 'new', to: 'pages#new_film'
  
  resources :movies
  resources :comments
  resources :stars, only: [:read]
end
