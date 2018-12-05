Rails.application.routes.draw do
  resources :artists, :genres, only: %i[new create edit update show]
  resources :songs, only: %i[index new create edit update show]
end
