Rails.application.routes.draw do
  devise_for :users
  resources :incomes, only: [:index, :new ,:create]
  resources :expenses, only: [:index]
  resources :diffs, only: [:index]

  root 'transactions#index'
end
