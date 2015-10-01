class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_username(params[:username])
    if user != nil && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Success'
    else
      flash[:alert] = 'Email or password did not match'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
