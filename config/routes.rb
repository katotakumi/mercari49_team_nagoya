Rails.application.routes.draw do
  devise_for :users
  get 'tops' => 'tops#index'
  resources :users, only: [:show] 
end
