Rails.application.routes.draw do
  devise_for :users
  resources :conversations do
    resources :messages
  end
  root 'dashboard#index'
  resources :shoes do
    resources :images, :only => [:create, :destroy]
    resources :comments 
  end
  resources :users
  resources :posts
  resources :charges, only:[:index, :show, :new, :create]
end
