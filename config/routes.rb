Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [ :index, :new, :create, :show ] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: :index
end
