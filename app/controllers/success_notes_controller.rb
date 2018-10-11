class SuccessNotesController < ApplicationController
  def new
    @success_note = SuccessNote.new
  end

  def create
    @success_note = SuccessNote.new(body: params[:success_note][:body], why_answer: params[:success_note][:why_answer])
    @success_note.day = Date.today
    @success_note.user = current_user
    @success_note.save
    if params[:finish]
      redirect_to notes_path
    else
      redirect_to new_success_note_path
    end
  end

  def edit
    @success_note = SuccessNote.find(params[:id])
  end

  def update
    @success_note = SuccessNote.find(params[:id]).update_attributes(success_notes_params)
    redirect_to notes_path
  end

  def destroy
    @success_note = SuccessNote.find(params[:id]).destroy
    redirect_to notes_path
  end

  private
  def success_notes_params
    params.require(:success_note).permit(:user_id, :why_answer, :body, :day)
  end

end
