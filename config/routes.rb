Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  resources :categories, only: [:index, :show] do
    get :settings, on: :member
    resources :products
  end
  resources :pages, only: [:show]
  # Defines the root path route ("/")
  root "categories#index"
end
