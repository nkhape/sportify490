Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [ :index, :new, :create ] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: :index
end
