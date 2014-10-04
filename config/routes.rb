Rails.application.routes.draw do
  root :to => 'pages#home'

  resource :users
  resources :countries
  resources :entries

end
