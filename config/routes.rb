Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :show, :edit, :update]
  resources :genres, only: [:index, :new, :create, :show, :edit, :update]
  resources :artists, only: [:index, :new, :create, :show, :edit, :update]

end
