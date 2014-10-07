# == Route Map
#
#       Prefix Verb   URI Pattern                   Controller#Action
#         root GET    /                             pages#home
#        pages GET    /pages(.:format)              pages#index
#              POST   /pages(.:format)              pages#create
#     new_page GET    /pages/new(.:format)          pages#new
#    edit_page GET    /pages/:id/edit(.:format)     pages#edit
#         page GET    /pages/:id(.:format)          pages#show
#              PATCH  /pages/:id(.:format)          pages#update
#              PUT    /pages/:id(.:format)          pages#update
#              DELETE /pages/:id(.:format)          pages#destroy
#        users GET    /users(.:format)              users#index
#              POST   /users(.:format)              users#create
#     new_user GET    /users/new(.:format)          users#new
#    edit_user GET    /users/:id/edit(.:format)     users#edit
#         user GET    /users/:id(.:format)          users#show
#              PATCH  /users/:id(.:format)          users#update
#              PUT    /users/:id(.:format)          users#update
#              DELETE /users/:id(.:format)          users#destroy
#    countries GET    /countries(.:format)          countries#index
#              POST   /countries(.:format)          countries#create
#  new_country GET    /countries/new(.:format)      countries#new
# edit_country GET    /countries/:id/edit(.:format) countries#edit
#      country GET    /countries/:id(.:format)      countries#show
#              PATCH  /countries/:id(.:format)      countries#update
#              PUT    /countries/:id(.:format)      countries#update
#              DELETE /countries/:id(.:format)      countries#destroy
#      results GET    /results(.:format)            countries#result
#      entries GET    /entries(.:format)            entries#index
#              POST   /entries(.:format)            entries#create
#    new_entry GET    /entries/new(.:format)        entries#new
#   edit_entry GET    /entries/:id/edit(.:format)   entries#edit
#        entry GET    /entries/:id(.:format)        entries#show
#              PATCH  /entries/:id(.:format)        entries#update
#              PUT    /entries/:id(.:format)        entries#update
#              DELETE /entries/:id(.:format)        entries#destroy
#        login GET    /login(.:format)              sessions#new
#              POST   /login(.:format)              sessions#create
#              DELETE /login(.:format)              sessions#destroy
#

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
