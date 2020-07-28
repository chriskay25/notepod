class SessionsController < ApplicationController
  skip_before_action :redirect_if_not_logged_in

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

  def google
    @user = User.find_or_create_by(email: auth["info"]["email"]) do |user|
      @user.username = auth["info"]["first_name"]
      @user.password = SecureRandom.hex(10)
    end 

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/'
    end 
  end 

  private

  def auth
    request.env['omniauth.auth']
  end 

end 