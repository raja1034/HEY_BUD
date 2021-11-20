Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :matches, only: %i[index show]
  resources :user_interests, only: %i[index create edit update]
  get "/welcome", to: "profile#new", as: :user_root
  post "/welcome", to: "profile#create"
end
