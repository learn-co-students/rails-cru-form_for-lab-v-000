Rails.application.routes.draw do
  resources :songs
  resources :genres, except: :index
  resources :artists, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end
