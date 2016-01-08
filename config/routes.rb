Rails.application.routes.draw do
  root 'top#index', via: :get
  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

  # get 'auth/facebook', as: "auth_provider"
  # get 'auth/facebook/callback', to: 'users#login'


end
