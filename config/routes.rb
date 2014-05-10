MileageTracker::Application.routes.draw do
  resources :vehicles
  resources :mileages, only: [:index, :new, :create]
  resources :makes

  root to: 'vehicles#index'
end
