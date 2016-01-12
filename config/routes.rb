Rails.application.routes.draw do
  root 'top#index', via: :get

  post 'top/authorize'
  post '/', controller: :top, action: :index

  get 'auth/:provider/callback', to: "sessions#create"
  get 'sign_out', to: "sessions#destroy", as: 'sign_out'
  get 'post_to_wall', to: "users#post_to_wall"
  # get 'auth/facebook', as: "auth_provider"
  # get 'auth/facebook/callback', to: 'users#login'

  resources :users
  resources :games
  resources :top
  resources :gamesessions
  resources :invites, only:[:create]

end
