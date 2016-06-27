Rails.application.routes.draw do
  resources :songs, only: [:index, :create, :new, :show, :update, :edit]

  resources :artists, only: [:index, :create, :new, :show, :update, :edit]

  resources :genres, only: [:index, :create, :new, :show, :update, :edit]

end
