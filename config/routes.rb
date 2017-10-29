Rails.application.routes.draw do
  resources :artist, only: [:index, :show, :new, :create, :edit, :update]
  get '/artists/:id' => 'artist#show'
  resources :genre, only: [:index, :show, :new, :create, :edit, :update]
  get '/genres/:id' => 'genre#show'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  get '/songs/:id' => 'song#show'
end
