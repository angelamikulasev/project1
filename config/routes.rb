

Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :pages

  resources :users
  resources :countries
  get '/results' => 'countries#result'
  resources :entries

  
  resources :locations

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end
