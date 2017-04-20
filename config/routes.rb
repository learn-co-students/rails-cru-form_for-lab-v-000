Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :artists, only: [:create, :edit, :show, :update, :new]
  resources :genres, only: [:create, :edit, :show, :update, :new]
  resources :songs, only: [:create, :edit, :show, :update, :new, :index]
end
