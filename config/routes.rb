Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :update, :edit]
  resources :favorites, only: [:create, :destroy]
  resources :picture_posts do
    collection do
      post :confirm
    end
  end
end
