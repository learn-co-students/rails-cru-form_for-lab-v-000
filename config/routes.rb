Rails.application.routes.draw do
  resources :artists, except: [:destroy, :index]
  resources :genres, except: [:destroy, :index]
  resources :songs

end
