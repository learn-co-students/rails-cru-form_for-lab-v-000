Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists

  root 'songs#index'
end
