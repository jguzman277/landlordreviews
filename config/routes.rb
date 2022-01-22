Rails.application.routes.draw do
  get 'landlords/index'

  devise_for :landlords, controllers: {
    sessions: 'landlords/sessions',
    confirmations: 'landlords/confirmations',
    registrations: 'landlords/registrations',
    passwords: 'landlords/passwords'
  }

  match '/landlords', to: 'landlords#index', via: 'get'
  match '/landlords/:id', to: 'landlords#show', via: 'get'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  resources :countries
  resources :states
  resources :bedrooms
  resources :rooms
  resources :amenities
  resources :property_types
  resources :properties
  resources :users, :only =>[:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "properties#index"
end
