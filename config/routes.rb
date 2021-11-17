Rails.application.routes.draw do
  get 'avatar/new'
  devise_for :users
  root to: 'pages#home'
  resource :avatar, only: :new, controller: :avatar
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :user_interests, only: %i[index create edit update]

end
