Rails.application.routes.draw do
  resources :incomes, only: [:index]
  resources :expenses, only: [:index]
  resources :diffs, only: [:index]

  root 'transactions#index'
end
