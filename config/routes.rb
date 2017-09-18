Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists

  patch 'songs/:id', to: 'songs#update'

  get '/navigate', to: 'navigate#show'

end
