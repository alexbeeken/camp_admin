Rails.application.routes.draw do
  root to: 'visitors#dashboard'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :applications
  resources :healths
  resources :travels
  resources :legals

  get '/dashboard', to: 'visitors#dashboard'
  get '/returning_campers', to: 'visitors#returning_campers'
  get '/new_applications', to: 'visitors#new_applications'
  get '/index', to: 'visitors#index'
end
