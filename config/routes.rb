Rails.application.routes.draw do
  resources :artists, :genres, :songs, only: [:index, :show, :new, :create, :edit, :update]
end
