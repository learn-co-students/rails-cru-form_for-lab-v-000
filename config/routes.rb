Rails.application.routes.draw do
  resources :songs, except: [:delete]
  resources :genres, except: [:delete]
  resources :artists, except: [:delete]
end
