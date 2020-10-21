class LoginsController < ApplicationController
  def new; end
  def create
    @user = User.find_by(params[:username])
    if @user
      session[:user_id] = @user.id
      redirect_to root_path(@user.username, @user), notice: 'You are logged in'
    else
      flash.now[:alert] = 'User not found, please try again'
    end
  end
  def destroy
    session[:user_id] = nil
    @current_user = nil
    redirect_to root_path, notice: 'Logged Out'
  end
end
