Rails.application.routes.draw do
  resources :songs, except: [:destroy]
  resources :genres, except: [:destroy]
  resources :artists, except: [:destroy]
end
