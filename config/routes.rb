Rails.application.routes.draw do
  # A non-resourceful route for a special purpose.
  # Could be wrapped into the index, but feels a little messy

  get '/fs_items/all_directories', to: 'fs_items#all_directories'
  resources :fs_items, only: [:index, :show, :destroy, :update, :create]
end
