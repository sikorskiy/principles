class FailNotesController < ApplicationController
  def new
    @fail_note = FailNote.new
  end

  def create
    @fail_note = FailNote.new(body: params[:fail_note][:body], why_answer: params[:fail_note][:why_answer])
    @fail_note.day = Date.today
    @fail_note.user = current_user
    @fail_note.save
    if params[:finish]
      redirect_to notes_path
    else
      redirect_to new_fail_note_path
    end
  end

  def edit
    @fail_note = FailNote.find(params[:id])
  end

  def update
    @fail_note = FailNote.find(params[:id]).update_attributes(fail_notes_params)
    redirect_to notes_path
  end

  def destroy
    @fail_note = FailNote.find(params[:id]).destroy
    redirect_to notes_path
  end

  private
  def fail_notes_params
    params.require(:fail_note).permit(:user_id, :why_answer, :body, :day)
  end
end
