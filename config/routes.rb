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
  resources :users, :pages, :accounts, :except => [:edit]
end
