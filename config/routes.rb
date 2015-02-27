Rails.application.routes.draw do
  resources :fs_items, only: [:index]
end
