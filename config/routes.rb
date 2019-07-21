Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :songs, only: [:create, :show, :update, :new, :edit, :index]
resources :artists, only: [:create, :show, :update, :new, :edit]
resources :genres, only: [:create, :show, :update, :new, :edit]
end
