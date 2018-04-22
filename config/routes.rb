Rails.application.routes.draw do
  get 'songs/new'

  get 'songs/edit'

  get 'songs/show'

  get 'genres/create'

  get 'genres/edit'

  get 'genres/new'

  get 'genres/show'

  get 'artists/show'

  get 'artists/create'

  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
end
