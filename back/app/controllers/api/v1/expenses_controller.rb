class Api::V1::ExpensesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @expenses = Expense.all
    render json: @expenses, status: 200
  end

  def show
    @expense = Expense.find(params[:id])
    render json: @expense, status: 200
  end

  def update
    @expense = Expense.find(params[:id])
    @expense.update!(expense_params)
    render json: @user, status: 200
  end

  def validate
    @expense = Expense.find(params[:id])
    @expense.validated!
    render json: @expense, status: 200
  end

  private

  def expense_params
    params.require(:expense).permit(:title, :amount)
  end
end
