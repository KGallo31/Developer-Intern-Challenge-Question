Rails.application.routes.draw do
  resources :inventoryitems 
  resources :inventories
  resources :items
  # Did not include update for warehouse because warehouse only has location and it will not change
  resources :warehouses, only: [:create,:destroy,:index,:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



end
