Rails.application.routes.draw do
  resources :songs, except: :destroy
  resources :genres, except: :destroy
  resources :artists, except: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
