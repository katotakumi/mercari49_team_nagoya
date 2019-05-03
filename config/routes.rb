Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :users, only: [:show] 
  resources :tops, only: [:index, :new, :create, :edit, :update] 
end
