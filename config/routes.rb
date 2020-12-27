Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :blogs
  resources :technology_topics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'blogs#index'



end
