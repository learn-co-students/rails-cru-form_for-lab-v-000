Rails.application.routes.draw do
  resources :artist, only: [:index, :show, :new, :create, :edit, :update]
  get '/artists/:id' => 'artists#show'
  resources :genre, only: [:index, :show, :new, :create, :edit, :update]
  get '/genres/:id' => 'genres#show'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  get '/songs/:id' => 'songs#show'
end
