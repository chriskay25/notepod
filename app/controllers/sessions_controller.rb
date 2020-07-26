class SessionsController < ApplicationController

  def home
    redirect_to user_path(current_user) if logged_in?
  end 

  def new
  end 

  def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id 
      redirect_to user_path(user)
    else
      flash[:message] = "Username and/or password incorrect"
      redirect_to login_path
    end 
  end 

  def destroy
    session.clear
    @current_user = nil
    redirect_to root_path
  end 

end 