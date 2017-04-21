Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "homes#index"

  get '/locations', to: 'locations#index', as: 'locations'
  get "/locations/new", to: "locations#new", as: "new_location"

  get '/homes/mapAdd', to: "homes#mapAdd", as: 'mapAdd'


    #  Location Routes



  get '/locations/map', to: "locations#map", as: "map"
  post '/locations', to: 'locations#create'
  get "/locations/:id", to: "locations#show", as: "location"
  get "/locations/:id/edit", to: "locations#edit", as: "edit_location"
  patch "/locations/:id", to: "locations#update"
  delete "/locations/:id", to: "locations#destroy"

    # Article Routes

  get '/articles/:id/new', to: 'articles#new', as: 'new_article'
  get '/articles/:id', to: 'articles#show', as: 'article'
  get '/articles', to: 'articles#index', as: 'user_articles'
  post '/articles', to: 'articles#create'
  delete '/articles/:id', to: 'articles#destroy', as:'delete_article'
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  put '/articles/:id', to: 'articles#update'
  patch '/articles/:id', to: 'articles#update'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'


end
