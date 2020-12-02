Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events do
    resources :bookings, only: [:create]
    resources :posts, only: [:create]
  end

  resources :bookings, only: :index do
    post "accept", to: "bookings#accept", as: "accept"
    post "cancel", to: "bookings#cancel", as: "cancel"
  end

  resources :search, only: [:index]
  resources :posts, only: :destroy
end
