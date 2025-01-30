Rails.application.routes.draw do
  resources :feature_requests, only: [:index, :create, :show, :update, :destroy]
end