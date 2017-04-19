Rails.application.routes.draw do
  devise_for :users
  root "homes#index"

  get '/locations', to: 'locations#index', as: 'locations'
  get "/locations/new", to: "locations#new", as: "new_location"
  get '/homes/map', to: "homes#map", as: "map"
  get '/homes/mapAdd', to: "homes#mapAdd", as: 'mapAdd'

  post '/locations', to: 'locations#create'
  get "/locations/:id", to: "locations#show", as: "location"
  get "/locations/:id/edit", to: "locations#edit", as: "edit_location"
  patch "/locations/:id", to: "locations#update"
  delete "/locations/:id", to: "locations#destroy"




end
