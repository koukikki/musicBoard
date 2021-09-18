Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'rooms/index'
  root to: "rooms#index"

  resources :rooms
  resources :users, only: :show

end
