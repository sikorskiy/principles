class DailyTasksController < ApplicationController
  def new
    @daily_task = DailyTask.new
  end

  def create
    @daily_task = DailyTask.new(daily_task_params)
    day_id = Day.find_or_create_by(day: Day.today)
    @daily_task.user_day = UserDay.find_or_create_by(day_id: day_id, user_id: current_user.id)
    @daily_task.save
    redirect_to daily_tasks_path
  end

  def index
    @daily_tasks = DailyTask.all
  end

  def complete
    #todo
    DailyTask.where('id in (?)', params[:daily_task_ids]).update_all(done: true)
    redirect_to daily_tasks_path
  end

  private
  def daily_task_params
    params.require(:daily_task).permit(:name, :description)
  end
end
