class UsersController < ApplicationController
  skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else
      render :new
    end 
  end 

  def show
    authorized?
    @user = User.find_by(id: params[:id])
  end 

  def edit
    authorized?
    @user = User.find_by(id: params[:id])
  end 

  def update
    authorized?
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end 

  def destroy
    authorized?
    user = User.find_by(id: params[:id])
    user.delete
    session.clear 
    @current_user = nil
    redirect_to root_path
  end 

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end 

end 