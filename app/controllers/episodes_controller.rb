class EpisodesController < ApplicationController

  def new
    @episode = Episode.new
  end

  def create
    episode = Episode.new(episode_params)
    if episode.save
      redirect_to episode_path(episode)
    else
      render :new
    end 
  end

  def show
    @episode = Episode.find_by(id: params[:id])
  end

  def discover
    @discover = Episode.most_noted.first.title
  end 

  private

  def episode_params
    params.require(:episode).permit(:title)
  end  

end