class ExpendituresController < ApplicationController
  def index
  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    @expenditure = Expenditure.new(expenditure_params)
    if @expenditure.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def expenditure_params
    params.require(:expenditure).permit(:category_id,:expenditure_amount,:register_day).merge(user_id: current_user.id)
  end
end
