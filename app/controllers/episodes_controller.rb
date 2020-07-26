class EpisodesController < ApplicationController

  def new
    @episode = Episode.new
  end

  def create
  end

  def show
    @episode = Episode.find_by(id: params[:id])
  end

end