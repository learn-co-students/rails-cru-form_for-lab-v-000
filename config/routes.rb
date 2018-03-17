Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :create, :edit, :new, :update]
  resources :genres, only: [:index, :show, :create, :edit, :new, :update]
  resources :artists, only: [:index, :show, :create, :edit, :new, :update]
end
