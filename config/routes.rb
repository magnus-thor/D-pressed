Rails.application.routes.draw do
  devise_for :users
  root controller: :articles, action: :index
  resources :articles, only: [:create, :new, :show]
  resources :users, only: [:show]

  resources :articles do
    resources :comments
  end

  scope "(:locale)", locale: /en|se/ do
    resources :books
  end
end

