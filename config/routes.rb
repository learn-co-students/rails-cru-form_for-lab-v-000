Rails.application.routes.draw do

  resources :artists, only: [:new, :show, :create, :edit, :update]

  resources :songs, only: [:index, :new, :show, :create, :edit, :update]
  
  resources :genres, only: [:new, :show, :create, :edit, :update]
end
