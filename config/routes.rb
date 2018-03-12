Rails.application.routes.draw do
  resources :artists, only: [:new, :create, :show, :edit, :update]
  patch  '/artists/:id' , to: 'artists#update'

  resources :genres, only: [:new, :create, :show, :edit, :update]
  patch  '/genres/:id' , to: 'genres#update'

  resources :songs, only: [:new, :create, :show, :edit, :update, :index]
  patch  '/songs/:id' , to: 'songs#update'
end
