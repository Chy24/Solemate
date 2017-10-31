Rails.application.routes.draw do
  resources :shoes
  devise_for :users
  resources :users

end
