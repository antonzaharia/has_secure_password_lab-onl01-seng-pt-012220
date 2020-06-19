class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    raise inspect.params
    @user = User.find_by(name: params[:user][:name])
  end
end
