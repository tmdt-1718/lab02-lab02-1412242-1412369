Rails.application.routes.draw do
  post    "sesion_login"    => "sessions#create"
  get  "logout"   => "sessions#destroy"
  get     "login"     => "users#index"
  get   "friends" => "friends#index"
  post  "friends" => "friends#create"
  
 resources :friends, only: [:destroy]
  resources :users, only: [:create]
  # resources :conservation, only: [:index]
  resources :user do
    resources :conservation, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

