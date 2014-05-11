MileageTracker::Application.routes.draw do
  resources :vehicles
  resources :mileages, only: [:index, :new, :create]
  resources :makes
  resources :models

  root to: 'vehicles#index'
end
