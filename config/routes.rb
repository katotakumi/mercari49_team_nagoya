Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    # omniauth_callbacks: 'users/omniauth_callbacks',
  }
  root 'tops#index'
  resources :users, only: [:index, :edit, :update, :show]
  resources :tops, only: [:index, :new, :create, :show, :edit, :update] 

  resources :tops do
    member do
      get 'see'
      patch 'buy'
    end
  end

end
