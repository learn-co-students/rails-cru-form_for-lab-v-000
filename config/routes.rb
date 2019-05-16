Rails.application.routes.draw do
  resources :artists, except: [:delete, :index]
  resources :genres, except: [:delete, :index]
  resources :songs, except: [:delete]
end
