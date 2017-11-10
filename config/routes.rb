Rails.application.routes.draw do
  root 'songs#new'
  resources :artists, :genres, :songs, only: [:new, :create, :edit, :show]
  patch 'artists/:id', to: 'artists#update'
  patch 'genres/:id', to: 'genres#update'
  patch 'songs/:id', to: 'songs#update'
  get 'songs', to: 'songs#index'
end
