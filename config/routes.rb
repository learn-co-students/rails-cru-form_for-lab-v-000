Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  resources :songs, only: [:index, :show, :new, :create, :update, :edit]
  resources :genres, only: [:index, :show, :new, :create, :update, :edit]
end
