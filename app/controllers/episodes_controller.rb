class EpisodesController < ApplicationController

  def new
    @episode = Episode.new
  end

  def create
  end

  def show
    @episode = Episode.find_by(id: params[:id])
  end

  private

  def episode_params
    params.require(:episode).permit(:title)
  end  

end