Rails.application.routes.draw do

resources :artists, only: [:show, :create, :update]
resources :genres, only: [:show, :create, :update]
resources :songs, only: [:show, :create, :update]
end
