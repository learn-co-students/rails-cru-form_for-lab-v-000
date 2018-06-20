Rails.application.routes.draw do

  #resource :artist, except: [:show, :create,:destroy]
  get 'artists/new', to: 'artists#new', as: 'new_artist'
  get 'artists/:id' , to: 'artists#show', as: 'artist'
  get 'artists/:id/edit' , to: 'artists#edit', as: 'edit_artist'
  post 'artists' , to: 'artists#create', as: 'artists'
  patch 'artists/:id', to: 'artists#update'

   get 'genres/new', to: 'genres#new', as: 'new_genre'
   get 'genres/:id/edit' , to: 'genres#edit', as: 'edit_genre'
   get '/genres/:id' , to: 'genres#show', as: 'genre'
   post 'genres' , to: 'genres#create', as: 'genres'
   patch 'genres/:id', to: 'genres#update'


   get '/songs/new', to: 'songs#new', as: :new_song
   get '/songs/:id' , to: 'songs#show', as: :song
   post '/songs', to: 'songs#create', as: :songs
   # post 'songs' , to: 'songs#create', as: 'songs'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
