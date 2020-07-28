class PodcastsController < ApplicationController

  def index
    @podcasts = Podcast.all
  end 
  
  def new
    @podcast = Podcast.new
  end 

  def create
    if params[:user_id] && user = User.find_by(id: params[:user_id])
      podcast = Podcast.new(podcast_params)
      if podcast.save
        podcast.subscriptions.create(user_id: user.id, podcast_id: podcast.id)
        redirect_to user_path(user)
      end
    else
      podcast = Podcast.new(podcast_params)
      if podcast.save
        redirect_to podcast_path(podcast)
      else
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
