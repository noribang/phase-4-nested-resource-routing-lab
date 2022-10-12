Rails.application.routes.draw do

  # GET  /items(.:format)                    items#index
  # GET  /users/:user_id/items(.:format)     items#index
  # POST /users/:user_id/items(.:format)     items#create
  # GET  /users/:user_id/items/:id(.:format) items#show
  # GET  /users/:id(.:format)                users#show
 
  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:index, :show, :create]
  end
end
