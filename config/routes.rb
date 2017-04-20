Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "homes#index"

  get '/locations', to: 'locations#index', as: 'locations'
  get "/locations/new", to: "locations#new", as: "new_location"

  get '/homes/mapAdd', to: "homes#mapAdd", as: 'mapAdd'

  get '/locations/map', to: "locations#map", as: "map"
  post '/locations', to: 'locations#create'
  get "/locations/:id", to: "locations#show", as: "location"
  get "/locations/:id/edit", to: "locations#edit", as: "edit_location"
  patch "/locations/:id", to: "locations#update"
  delete "/locations/:id", to: "locations#destroy"




end
