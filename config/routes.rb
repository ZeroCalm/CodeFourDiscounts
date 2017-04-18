Rails.application.routes.draw do
  devise_for :users
  root "homes#index"

  get '/locations', to: 'locations#index', as: 'locations'

end
