class EpisodesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @episode = Episode.new
  end

  def create
    pod = Podcast.find_by(id: params[:podcast_id])
    @episode = pod.episodes.build(episode_params)
    if @episode.save
      redirect_to episode_path(@episode)
    else
      render :new
    end 
  end

  def show
    @episode = Episode.find_by(id: params[:id])
  end

  def discover
    @discover = Episode.most_noted
  end 

  private

  def episode_params
    params.require(:episode).permit(:title, :podcast_id)
  end  

end