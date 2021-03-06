SampleApp::Application.routes.draw do
  root to: "static_pages#home"

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "/signup", to: "users#new"
  get "/signin", to: "sessions#new"
  match "/signout", to: "sessions#destroy", via: :delete


  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
end
