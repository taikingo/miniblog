Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts

  resource :profile, only: [:show, :edit, :update]

  resources :accounts, only: [:show] do
    resources :follows, only: [:create]
    resources :unfollows, only: [:create]
  end
end
