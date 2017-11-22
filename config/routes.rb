Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  get '/artists/:id' => 'artist#show'
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  get '/genres/:id' => 'genre#show'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  get '/songs/:id' => 'songs#show'
end
