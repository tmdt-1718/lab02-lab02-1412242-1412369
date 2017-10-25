Rails.application.routes.draw do
  post    "create_message"    => "message#create"
  # resources :conservation, only: [:index]
  resources :messages, only: [:create]
  resources :user, only: [:index] do
    resources :conservation, only: [:index, :show, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
