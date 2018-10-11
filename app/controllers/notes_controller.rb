class NotesController < ApplicationController
  def index
    @date = Date.today
    @success_notes = SuccessNote.where(user: current_user, day: Date.today)
    @fail_notes = FailNote.where(user: current_user, day: Date.today)
    @rules = Rule.where(user: current_user, day: Date.today)
    @incomplete_daily_tasks = DailyTask.all.where(done: [0, nil], day: Date.today)
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
