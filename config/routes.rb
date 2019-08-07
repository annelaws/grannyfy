Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :grandmas do
    resources :bookings, only: [:new, :create]
  end

  get '/profile', to: 'users#show'
  get '/profile/bookings/:id', to: 'bookings#show', as: :booking_show
  get '/profile/bookings/:id/reviews/new', to:'reviews#new', as: :new_review
  post '/profile/bookings/:id/reviews', to: 'reviews#create', as: :reviews
end

