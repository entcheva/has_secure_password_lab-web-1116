Rails.application.routes.draw do

  resources :users, except: [:create]
  post '/users', to: 'users#create', as: 'login'
  resources :sessions



end
