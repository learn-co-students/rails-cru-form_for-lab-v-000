Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :genres, only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :artists, only: [:index, :new, :create, :show, :update, :edit, :destroy]
end
