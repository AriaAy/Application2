Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  
  resources :users, only: [:show, :edit, :update]
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  
  get 'homes/about', to: 'homes#about', as: 'about'
end
