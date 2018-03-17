Rails.application.routes.draw do
  resources :artists, :songs, :genres, except: :destroy
end
