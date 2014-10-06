Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :pages

  resources :users
  resources :countries
  resources :entries

end
