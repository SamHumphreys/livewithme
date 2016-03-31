# == Route Map
#
#       Prefix Verb   URI Pattern                  Controller#Action
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy

#      reviews GET    /reviews(.:format)           reviews#index
#              POST   /reviews(.:format)           reviews#create
#   new_review GET    /reviews/new(.:format)       reviews#new
#  edit_review GET    /reviews/:id/edit(.:format)  reviews#edit
#       review GET    /reviews/:id(.:format)       reviews#show
#              PATCH  /reviews/:id(.:format)       reviews#update
#              PUT    /reviews/:id(.:format)       reviews#update
#              DELETE /reviews/:id(.:format)       reviews#destroy

#     listings GET    /listings(.:format)          listings#index
#              POST   /listings(.:format)          listings#create
#  new_listing GET    /listings/new(.:format)      listings#new
# edit_listing GET    /listings/:id/edit(.:format) listings#edit
#      listing GET    /listings/:id(.:format)      listings#show
#              PATCH  /listings/:id(.:format)      listings#update
#              PUT    /listings/:id(.:format)      listings#update
#              DELETE /listings/:id(.:format)      listings#destroy

#       images GET    /images(.:format)            images#index
#              POST   /images(.:format)            images#create
#    new_image GET    /images/new(.:format)        images#new
#   edit_image GET    /images/:id/edit(.:format)   images#edit
#        image GET    /images/:id(.:format)        images#show
#              PATCH  /images/:id(.:format)        images#update
#              PUT    /images/:id(.:format)        images#update
#              DELETE /images/:id(.:format)        images#destroy
#

Rails.application.routes.draw do

  root :to => 'pages#welcome'
  get '/pages/about' => 'pages#about'

  get 'users/edit' => 'users#edit'
  get 'users/password' => 'users#password'

  get '/signup' => 'users#new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  resources :users
  resources :reviews
  resources :listings
  resources :images
end
