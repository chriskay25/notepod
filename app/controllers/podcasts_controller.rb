class PodcastsController < ApplicationController

  def index
    @podcasts = Podcast.all_sorted
  end 
  
  def new
    @podcast = Podcast.new
  end 

  def create
    if params[:user_id] && user = User.find_by(id: params[:user_id])
      @podcast = user.podcasts.build(podcast_params)
      if @podcast.save
        @podcast.subscriptions.create(user_id: user.id, podcast_id: @podcast.id)
        redirect_to user_path(user)
      else
        @errors = @podcast.errors.messages
        redirect_to podcasts_path
      end
    else
      @podcast = Podcast.new(podcast_params)
      if @podcast.save
        redirect_to podcast_path(@podcast)
      else
        @errors = @podcast.errors.messages
        render :new
      end 
    end 
  end 

  def show
    @podcast = Podcast.find_by(id: params[:id])
  end


  private

  def podcast_params
    params.require(:podcast).permit(:name)
  end   
end
