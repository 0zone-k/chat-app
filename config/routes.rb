Rails.application.routes.draw do

  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]

  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
