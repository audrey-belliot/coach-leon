Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :plans
  resources :health_logs
  resources :users, only: [:edit, :update]
  resources :activities_logs, only: [:index, :update, :edit, :destroy]
  resources :meals_logs, only: [:index, :update, :edit, :destroy]

  resources :activities do
    resources :activities_logs, only: [:new, :create]
  end
  resources :recipes do
    resources :meals_logs
  end
  get "/my_logs", to: "pages#my_logs"

end
