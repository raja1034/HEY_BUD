Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/faq", to: 'pages#faq'
  get "/pricing", to: 'pages#pricing'
  resources :matches, only: %i[index show create]
  resources :user_interests, only: %i[index create edit update]
  get "/welcome", to: "profile#new", as: :user_root
  post "/welcome", to: "profile#create"
  resources :chatrooms, only: %i[index show] do
  resources :messages, only: :create
  end

end
