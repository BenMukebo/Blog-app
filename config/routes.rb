Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'posts/index'
  get 'posts/show'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  # Defines the root path route ("/")
  # root "articles#index"       
end
