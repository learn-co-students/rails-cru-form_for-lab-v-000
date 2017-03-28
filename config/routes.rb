Rails.application.routes.draw do
    resources :artists, only: [:index, :new, :create, :edit, :update, :show]
    resources :genres, only: [:index, :new, :create, :edit, :update, :show]
    resources :songs, only: [:index, :new, :create, :edit, :update, :show]
  
end
