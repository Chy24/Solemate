Rails.application.routes.draw do
  root 'dashboard#index'
  devise_for :users
  resources :shoes do
    resources :images, :only => [:create, :destroy]
  end
  resources :users
end
