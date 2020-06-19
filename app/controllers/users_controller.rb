class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to login_path
  end

  private
  def user_params
    params.permit(:user).require(:name, :password, :password_confirmation)
  end
end
