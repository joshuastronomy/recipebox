# == Route Map
#
#        Prefix Verb   URI Pattern                 Controller#Action
# recipes_index GET    /recipes/index(.:format)    recipes#index
#       recipes GET    /recipes(.:format)          recipes#index
#               POST   /recipes(.:format)          recipes#create
#    new_recipe GET    /recipes/new(.:format)      recipes#new
#   edit_recipe GET    /recipes/:id/edit(.:format) recipes#edit
#        recipe GET    /recipes/:id(.:format)      recipes#show
#               PATCH  /recipes/:id(.:format)      recipes#update
#               PUT    /recipes/:id(.:format)      recipes#update
#               DELETE /recipes/:id(.:format)      recipes#destroy
#          root GET    /                           recipes#index
# 

Rails.application.routes.draw do

  get 'recipes/index'
    resources :recipes

  root 'recipes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
