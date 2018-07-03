Rails.application.routes.draw do


  resources :artists, only: [:show, :new, :index, :create, :edit, :update]

  resources :genres, only: [:show, :new, :index, :create, :edit, :update]
  
end
