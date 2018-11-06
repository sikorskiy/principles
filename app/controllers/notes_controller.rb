class NotesController < ApplicationController
  def index
    @day = session[:day] || Date.today
    @success_notes = SuccessNote.where(user: current_user, day: @day)
    @fail_notes = FailNote.where(user: current_user, day: @day)
    @rules = Rule.where(user: current_user, day: @day)
    @incomplete_daily_tasks = DailyTask.all.where(done: [0, nil], day: @day)
  end

  def ajax_date
    session[:day] = Date.today + params[:date].to_i
    respond_to do |format|
      format.json { render json: { result: session[:day] } }
    end
  end

  def show
  end

  def new
  end

  def daily_task
    @daily_task = DailyTask.find(params[:id])
  end

  def update_daily_task
    @daily_task = DailyTask.find(params[:id])
    @daily_task.update_attribute(:result_comment, params[:daily_task][:result_comment])
  end
  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
