Rails.application.routes.draw do
  get 'transactions/index'
  get 'differences/index'
  get 'expenditures/index'
  get 'incomes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
