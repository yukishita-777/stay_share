Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  get 'pages/index'
  get 'pages/show'
  resources :rooms
  resources :users, only:[:show, :edit, :update]
  resources :registrations, only:[:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
