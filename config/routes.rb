Rails.application.routes.draw do
  devise_for :users
  get 'tops' => 'tops#index'
end
