Rails.application.routes.draw do

  post    "create_message"    => "message#create"
  post    "sesion_login"    => "sessions#create"
  get  "logout"   => "sessions#destroy"
  get     "login"     => "users#index"
  get   "friends" => "friends#index"
  post  "friends" => "friends#create"
  
 resources :friends, only: [:destroy]
  resources :users, only: [:create]
  # resources :conservation, only: [:index]
  resources :messages, only: [:create]
  resources :user, only: [:index] do
    resources :conservation, only: [:index, :show, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
