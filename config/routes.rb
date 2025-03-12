Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
  resources :orders, only: [:destroy]
  resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :orders, only: [:index, :show, :create]
  end
  get "orders/submit", to: "orders#submit"

  devise_scope :user do
    delete 'users/sign_out', to: 'devise/sessions#destroy', as: :logout
  end
end
