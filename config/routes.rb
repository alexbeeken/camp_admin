Rails.application.routes.draw do
  root to: 'visitors#dashboard'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :applications
  resources :healths
  resources :travels
  resources :legals

  resources :events do
    resources :forms do
      resources :form_responses
    end
  end


  get '/dashboard', to: 'visitors#dashboard'
  get '/index', to: 'visitors#index'
end
