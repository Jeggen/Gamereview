Rails.application.routes.draw do
devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}
  resources :reviews
  resources :games

  root 'reviews#index'
end
