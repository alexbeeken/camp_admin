Rails.application.routes.draw do
  root to: 'visitors#dashboard'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :applications

  get '/dashboard', to: 'visitors#dashboard'
  get '/index', to: 'visitors#index'
end
