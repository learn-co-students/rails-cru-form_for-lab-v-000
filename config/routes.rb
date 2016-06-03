Rails.application.routes.draw do
  resources :artists, except: [:destroy]
  resources :genres, except: [:destroy]
  resources :songs, except: [:destroy]
end
