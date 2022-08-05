Rails.application.routes.draw do
  devise_for :views
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "users#home"
  resources :users
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#login'
  get 'index', to: 'users#index'
end
