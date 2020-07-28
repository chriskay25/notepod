class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
  end 

  private

  def notes_params
    params.require(:note).permit(:content)
  end

end 