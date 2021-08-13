Rails.application.routes.draw do
  root :to => 'application#home'

  get 'signin', to: 'sessions#new', as: 'signin'
  post '/session', to: 'sessions#create', as: 'session'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :attractions
  resources :rides
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
