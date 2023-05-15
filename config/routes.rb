Rails.application.routes.draw do
  devise_for :users
  resources :incomes, only: [:new ,:create]
  resources :expenses, only: [:new ,:create]
  resources :diffs, only: [:index]

  root 'transactions#index'
end
