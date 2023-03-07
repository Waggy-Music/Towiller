Rails.application.routes.draw do
  # get 'posts/new'
  # get 'posts/show'
  # get 'posts/index'
  root to: 'homes#top'
  devise_for :users
  get 'users/show' => 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  
end
