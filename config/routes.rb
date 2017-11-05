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
  resources :users do
    member do
      get :posts
    end
  end
  resources :posts
  resources :charges, only:[:index, :show, :new, :create]
  get '/support' => 'support#new'
  post '/support' => 'support#create'
  get 'users/:id/posts' => 'users#posts', :as => :user_posts
end

