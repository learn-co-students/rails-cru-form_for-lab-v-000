Rails.application.routes.draw do
  # resources :genres
  # resources :artists
  # resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, except: [:update, :destroy]
  resources :genres, except: [:update, :destroy]
  resources :artists, except: [:update, :destroy]
end
