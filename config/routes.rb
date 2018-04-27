Rails.application.routes.draw do
  resources :artists, :genres, :songs, only: [:new, :create, :edit, :update, :show]
  get '/songs', to: 'songs#index'
end
