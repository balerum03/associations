class SessionsController < ApplicationController

  def new

  end

  def create
   @user = User.where(username: params[:username])
   if @user.empty? == false
      session[:user_id] = @user[0].id
      redirect_to root_path
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
end
