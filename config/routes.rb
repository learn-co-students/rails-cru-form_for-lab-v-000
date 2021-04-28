Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#rails g resource Artist name:string bio:text --no-test-framework
#rails g resource Genre name:string --no-test-framework
#rails g resource Song name:string artist_id:integer genre_id:integer --no-test-framework
