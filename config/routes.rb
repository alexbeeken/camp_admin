Rails.application.routes.draw do
  root to: 'visitors#dashboard'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :applications
  resources :healths
  resources :travels
  resources :legals
  resources :events

  get '/dashboard', to: 'visitors#dashboard'
  get '/new_applications', to: 'visitors#new_applications'
  get '/deny/:id', to: 'users#deny', as: :deny_user
  get '/accept/:id', to: 'users#accept', as: :accept_user
  get '/undo/:id', to: 'users#undo', as: :undo_user
  get '/index', to: 'visitors#index'
end
