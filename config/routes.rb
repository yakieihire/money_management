Rails.application.routes.draw do
  devise_for :users
  resources :incomes, only: [:index]
  resources :expenses, only: [:index]
  resources :diffs, only: [:index]

  root 'transactions#index'
end
