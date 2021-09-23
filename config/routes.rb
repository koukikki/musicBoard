Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'rooms/index'
  root to: "rooms#index"

  resources :users, only: :show
  resources :rooms, only: [:index, :new, :create] do
    resources :comments, only: [:index, :new, :create]
    collection do
      get 'search'
    end
  end
end
