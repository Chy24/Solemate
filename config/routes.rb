Rails.application.routes.draw do
  root 'dashboard#index'
  devise_for :users
  resources :shoes do
    resources :images, :only => [:create, :destroy]
    resources :comments 
  end
  resources :users
  resources :posts
end
