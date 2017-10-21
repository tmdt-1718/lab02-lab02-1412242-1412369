Rails.application.routes.draw do
  resources :account, only: [:index]
  # resources :conservation, only: [:index]
  resources :user, only: [:index] do
    resources :conservation
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
