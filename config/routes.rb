# == Route Map
#
#              Prefix Verb   URI Pattern                     Controller#Action
#                root GET    /                               pages#home
#               login GET    /login(.:format)                sessions#new
#                     POST   /login(.:format)                sessions#create
#                     DELETE /login(.:format)                sessions#destroy
#           edit_user GET    /users/edit(.:format)           users#edit
#               users GET    /users(.:format)                users#index
#                     POST   /users(.:format)                users#create
#            new_user GET    /users/new(.:format)            users#new
#                user GET    /users/:id(.:format)            users#show
#                     PATCH  /users/:id(.:format)            users#update
#                     PUT    /users/:id(.:format)            users#update
#                     DELETE /users/:id(.:format)            users#destroy
#               pages GET    /pages(.:format)                pages#index
#                     POST   /pages(.:format)                pages#create
#            new_page GET    /pages/new(.:format)            pages#new
#                page GET    /pages/:id(.:format)            pages#show
#                     PATCH  /pages/:id(.:format)            pages#update
#                     PUT    /pages/:id(.:format)            pages#update
#                     DELETE /pages/:id(.:format)            pages#destroy
#            accounts GET    /accounts(.:format)             accounts#index
#                     POST   /accounts(.:format)             accounts#create
#         new_account GET    /accounts/new(.:format)         accounts#new
#             account GET    /accounts/:id(.:format)         accounts#show
#                     PATCH  /accounts/:id(.:format)         accounts#update
#                     PUT    /accounts/:id(.:format)         accounts#update
#                     DELETE /accounts/:id(.:format)         accounts#destroy
#              briefs GET    /briefs(.:format)               briefs#index
#                     POST   /briefs(.:format)               briefs#create
#           new_brief GET    /briefs/new(.:format)           briefs#new
#               brief GET    /briefs/:id(.:format)           briefs#show
#                     PATCH  /briefs/:id(.:format)           briefs#update
#                     PUT    /briefs/:id(.:format)           briefs#update
#                     DELETE /briefs/:id(.:format)           briefs#destroy
#    contact_requests GET    /contact_requests(.:format)     contact_requests#index
#                     POST   /contact_requests(.:format)     contact_requests#create
# new_contact_request GET    /contact_requests/new(.:format) contact_requests#new
#     contact_request GET    /contact_requests/:id(.:format) contact_requests#show
#                     PATCH  /contact_requests/:id(.:format) contact_requests#update
#                     PUT    /contact_requests/:id(.:format) contact_requests#update
#                     DELETE /contact_requests/:id(.:format) contact_requests#destroy
# 

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #             Prefix Verb   URI Pattern                                       Controller#Action
  root to: 'pages#home'

  #login
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  #users
  get '/users/edit' => 'users#edit', :as => :edit_user

  #routes
  resources :users, :pages, :accounts, :briefs, :contact_requests, :except => [:edit]
end
