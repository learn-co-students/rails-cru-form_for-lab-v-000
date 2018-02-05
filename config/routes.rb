Rails.application.routes.draw do
  resources :genres, except: [:destroy]
  resources :artists, except: [:destroy]
  resources :songs, except: [:destroy]

end
