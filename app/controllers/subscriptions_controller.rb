class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new
  end

  def create
    binding.pry
    @sub = current_user.subscriptions.build(user_id: current_user.id, podcast_id: params[:podcast_id])
    if @sub.save
      redirect_to user_path(current_user)
    else
      flash[:message] = "Something went wrong."
      render :'podcasts/index'
    end 
  end


  private

  def subscription_params
    params.require(:subscription).permit(:podcast_id)
  end 

end 