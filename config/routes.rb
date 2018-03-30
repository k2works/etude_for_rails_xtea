# == Route Map
#
#     Prefix Verb   URI Pattern                Controller#Action
#     orders GET    /orders(.:format)          orders#index
#            POST   /orders(.:format)          orders#create
#  new_order GET    /orders/new(.:format)      orders#new
# edit_order GET    /orders/:id/edit(.:format) orders#edit
#      order GET    /orders/:id(.:format)      orders#show
#            PATCH  /orders/:id(.:format)      orders#update
#            PUT    /orders/:id(.:format)      orders#update
#            DELETE /orders/:id(.:format)      orders#destroy
# 

Rails.application.routes.draw do
  resources :customers
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
