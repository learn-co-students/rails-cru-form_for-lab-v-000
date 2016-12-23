Rails.application.routes.draw do
  #resources :artists, only: [:create, :new, :update, :edit, :show]
  #resources :genres, only: [:create, :new, :update, :edit, :show]
  #resources :songs, only: [:create, :new, :update, :edit, :show, :index]
  resources :artists, only: [:create, :update, :show, :edit, :new, :index]
  resources :genres, only: [:create, :update, :show, :edit, :new, :index]
  resources :songs, only: [:create, :update, :show, :edit, :new, :index]
  get '/' => 'application#index'

end
