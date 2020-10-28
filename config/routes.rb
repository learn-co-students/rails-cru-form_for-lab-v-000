Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :create, :new, :edit, :update];
  resources :genres, only: [:index, :show, :create, :new, :edit, :update];
  resources :artists, only: [:index, :show, :create, :new, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
