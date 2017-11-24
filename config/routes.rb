Rails.application.routes.draw do
  
  resources :artists, only: [:index, :show, :new, :create, :edit]
  patch 'artists/:id', to: 'artists#update'

  resources :genres, only: [:index, :show, :new, :create, :edit]
  patch 'genres/:id', to: 'genres#update'

  resources :songs, only: [:index, :show, :new, :create, :edit]
  patch 'songs/:id', to: 'songs#update'

end
