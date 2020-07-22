class PodcastsController < ApplicationController

  def new
    @podcast = Podcast.new
  end 

  def create
    podcast = Podcast.new(podcast_params)
    if podcast.save
      redirect_to podcast_path(podcast)
    else
      render :new
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
