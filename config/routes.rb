Rails.application.routes.draw do
  resources :artists, only: %i[index show new edit create update]
  resources :songs, only: %i[index show new edit create update]
  resources :genres, only: %i[index show new edit create update]
end
