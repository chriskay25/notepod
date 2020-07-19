class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:username], password: params[:password])
    binding.pry
    if @user.save
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else
      render :new
    end 
  end 

end 