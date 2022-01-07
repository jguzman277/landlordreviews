Rails.application.routes.draw do
  resources :countries
  resources :states
  resources :bedrooms
  resources :rooms
  resources :amenities
  resources :property_types
  resources :properties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "properties#index"
end
