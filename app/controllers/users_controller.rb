class UsersController < ApplicationController

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
    @user = User.find_by(id: params[:id])
  end 

  def edit
    @user = User.find_by(id: params[:id])
  end 

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end 

  def destroy
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