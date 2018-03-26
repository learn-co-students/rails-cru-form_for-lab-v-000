Rails.application.routes.draw do
  resources :artists, :genres, :songs, only: [:index, :new, :create, :show, :edit, :update]
end
