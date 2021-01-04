Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  resources :rooms
  resources :users
  resources :registrations, only:[:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
