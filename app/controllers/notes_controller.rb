class NotesController < ApplicationController

  def new
    if params[:episode_id] && @episode = Episode.find_by(id: params[:episode_id])
      @note = @episode.notes.build
    end
  end

  def create
    if params[:episode_id] && episode = Episode.find_by(id: params[:episode_id])
      @note = episode.notes.build(note_params)
      if @note.save
        redirect_to note_path(@note)
      else
        render :new
      end 
    end 
  end 

  def show
    @note = Note.find_by(id: params[:id])
  end 

  def index
    @episode = Episode.find_by(id: params[:episode_id])
  end 

  private

  def note_params
    params.require(:note).permit(:content, :user_id, :episode_id)
  end

end 