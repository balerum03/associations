class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(params[:id])
    if !@user.nil?
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'You Are now Logged In!'
    else
      render 'new', notice: 'It seems that the username does not exist'
    end
  end

  def destroy
    session != nil
    session[:user_id] = nil
    redirect_to user_path, notice: 'Logged Out'
  end
end
