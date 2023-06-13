Rails.application.routes.draw do
  resources :blogs
  resources :users
  resources :sessions
  root to: 'blogs#index'

  resources :blogs do
    collection do
      post :confirm
    end
  end
end
