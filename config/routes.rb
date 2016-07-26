Rails.application.routes.draw do

  resources :artists, only: [:index, :show, :new, :create, :edit]
  get '/artists/:id/edit', to: 'artists#edit'
  patch 'artists/:id', to: 'artists#update'

  resources :genres, only: [:index, :show, :new, :create, :edit]
  get '/genres/:id/edit', to: 'genres#edit'
  patch 'genres/:id', to: 'genres#update'


  resources :songs, only: [:index, :show, :new, :create, :edit]
  get '/songs/:id/edit', to: 'songs#edit'
  patch 'songs/:id', to: 'songs#update'

end
