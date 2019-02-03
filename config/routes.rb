Rails.application.routes.draw do

  root to: 'services#index'

  devise_for :users

  resources :services, only: [:index, :show] do
    resources :appointments, only: [:create, :new]
  end

  namespace :admin, as: 'admin' do
    root to: "services#index"
    resources :services
    resources :users
    resources :appointments, only: [:index, :show, :destroy]
  end
end
