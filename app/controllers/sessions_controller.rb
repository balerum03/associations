class SessionsController < ApplicationController

  def new

  end

  def create
   @user = User.find_by(params[:username])
   if @user
      session[:user_id] = @user.id
      redirect_to '/welcome'
   else
      redirect_to '/login'
   end
  end

  def login
  end

  def welcome
  end

  def destroy
    session.destroy
    redirect_to root_path
  end
#   def new; end
#   def create
#     @user = User.find_by(params[:username])
#     if @user
#       session[:user_id] = @user.id
#       redirect_to root_path(@user.username, @user), notice: 'You are logged in'
#     else
#       flash.now[:alert] = 'User not found, please try again'
#     end
#   end
#   def destroy
#     session.delete(:user_id)
#     @current_user = nil
#     redirect_to root_path, notice: 'Logged Out'
#   end
end
