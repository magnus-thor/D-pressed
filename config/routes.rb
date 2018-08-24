Rails.application.routes.draw do
  devise_for :users
  root controller: :articles, action: :index
  resources :articles, only: [:create, :new, :show] do 
    resources :ratings, only: [:create]
  end
  resources :users, only: [:show]
  
  resources :articles, only: [:create, :new, :show]
  resources :users, only: [:show, :update]
end
