Rails.application.routes.draw do
  resources :artists, only: [:index, :new, :create, :show, :edit, :update]
  resources :songs, only: [:index, :new, :create, :show, :edit, :update] 
  resources :genres, only: [:index, :new, :create, :show, :edit, :update]   

  
end
