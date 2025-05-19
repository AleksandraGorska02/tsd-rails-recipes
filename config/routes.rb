Rails.application.routes.draw do
resources :ingredients, only: [:create, :update, :destroy]

  resources :recipes do
  resources :ingredients
end
  devise_for :users
  root "hello#index"
end
