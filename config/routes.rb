Rails.application.routes.draw do

  devise_for :users
  resources :services do
    resources :appointment, only: [:index, :create, :new]
  end

  scope '/admin' do
    resources :services
    resources :users
    resources :appointment, only: [:index, :show]
  end
end
