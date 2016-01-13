Rails.application.routes.draw do
  get 'words/new'

  root 'top#index', via: :get

  post 'top/authorize'
  post '/', controller: :top, action: :index
  post "games/post_giphy"

  get 'auth/:provider/callback', to: "sessions#create"
  get 'sign_out', to: "sessions#destroy", as: 'sign_out'
  get 'post_to_wall', to: "users#post_to_wall"
  # get 'auth/facebook', as: "auth_provider"
  # get 'auth/facebook/callback', to: 'users#login'

  resources :users
  resources :games do
    resources :giphies
  end
  resources :gamesessions
  resources :words, only: [:index, :create, :show]
  resources :top
  resources :invites, only: [:create]

end
