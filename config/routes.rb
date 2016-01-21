Rails.application.routes.draw do

  root 'top#index', via: :get

  post 'top/authorize'
  post '/', controller: :top, action: :index

  get 'auth/:provider/callback', to: "sessions#create"
  get 'sign_out', to: "sessions#destroy", as: 'sign_out'
  get 'post_to_wall', to: "users#post_to_wall"

  resources :users
  resources :games, only: [:index, :create, :show, :update, :post_giphy]
  resources :gamesessions
  resources :top
  resources :invites, only: [:create]
  resources :giphys

end