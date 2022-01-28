Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # post 'users/:user_id/posts/:id/create_comment', to: 'comments#create', as: 'create_comment'
  # post 'users/:user_id/posts/:id/create_like', to: 'likes#create', as: 'like_comment'

  root to: 'users#index'
  resources :users, only: %i[index show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:create]
      # post 'add_comment', to: 'comments#create', on: :member
      # post 'add_like', to: 'likes#create', on: :member
    end
  end
end

