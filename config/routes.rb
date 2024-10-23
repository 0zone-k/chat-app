Rails.application.routes.draw do

  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]

  get 'messages/index'
  root to: "messages#index"

end
