Rails.application.routes.draw do
  namespace :users_backoffice do
    get "welcome/index"
  end

  devise_for :users

  namespace :site do
    get "welcome/index"
  end

  namespace :admins_backoffice do
    get "welcome/index" # Dashboard
    resources :admins # Administradores
  end

  devise_for :admins

  get "welcome/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  #
  root to: "site/welcome#index"
end
