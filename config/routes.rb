Rails.application.routes.draw do
  #resources :artists, only: [:create, :new, :update, :edit, :show]
  #resources :genres, only: [:create, :new, :update, :edit, :show]
  #resources :songs, only: [:create, :new, :update, :edit, :show, :index]
  resources :artist, only: [:create, :update, :show, :edit]
  resources :genre, only: [:create, :update, :show, :edit]
  resources :song, only: [:create, :update, :show, :edit, :index]
  #get 'artist' => 'artist#update'

end
