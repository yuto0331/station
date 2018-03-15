Rails.application.routes.draw do
  root 'users#top'
  resources :sessions, only: [:new, :create, :destroy, :show]
  resources :favorites, only: [:create, :destroy]
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
