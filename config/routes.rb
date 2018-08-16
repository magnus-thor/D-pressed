Rails.application.routes.draw do
  root controller: :articles, action: :index
<<<<<<< HEAD
  resources :articles,  only: [:show]
=======

  resources :articles, only: [:create, :new]
>>>>>>> 4686cc0f50b8db54f577e9df1423bf647562c40e
end
