class NotesController < ApplicationController

  def new
    if params[:episode_id] && episode = Episode.find_by(id: params[:episode_id])
      @note = episode.notes.build
    else
      @note = Note.new
    end
  end

  def create
    if params[:episode_id] && episode = Episode.find_by(id: params[:episode_id])
      @note = episode.notes.build(notes_params)
    else
      @note = Note.new(notes_params)
    end

    if @note.save
      redirect_to note_path(@note)
    else
      render :new
    end 
  end 

  private

  def notes_params
    params.require(:note).permit(:content)
  end

end 