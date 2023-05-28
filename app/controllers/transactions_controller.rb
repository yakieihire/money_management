class TransactionsController < ApplicationController
  def index
    @income = Income.all
    @expenditure = Expenditure.all
  end
end
