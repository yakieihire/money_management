class TransactionsController < ApplicationController
  def index
    @income = Income.all
  end
end
