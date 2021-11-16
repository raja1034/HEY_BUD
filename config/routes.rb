Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :user_interests, only: %i[index edit update]
  resources :matches, only: %i[index show]
end
