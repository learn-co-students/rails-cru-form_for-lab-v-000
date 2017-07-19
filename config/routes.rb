Rails.application.routes.draw do
  resources :artists, only:[:show, :new, :create, :edit, :update]
  resources :genres, only:[:show, :new, :create, :edit, :update]
  resources :songs, only:[:show, :new, :create, :edit, :update, :index]
end
