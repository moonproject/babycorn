class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @user = User.where(id: params[:id])
    render json: @user, status: 200
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    render json: @user, status: 200
  end

  private

  def user_params
    params.permit(:firstname, :lastname, :email)
  end
end
