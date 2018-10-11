class DailyTasksController < ApplicationController
  def new
    @daily_task = DailyTask.new
  end

  def create
    @daily_task = DailyTask.new(daily_task_params)
    @daily_task.user= current_user
    @daily_task.day = Date.today
    @daily_task.save
    respond_to do |format|
      format.html { redirect_to daily_tasks_path }
      format.js
    end

  end

  def index
    @complete_daily_tasks = DailyTask.all.where(day: Date.today, user: current_user, done: true)
    @incomplete_daily_tasks = DailyTask.all.where(day: Date.today, user: current_user, done: [0, nil])
  end

  def update
    #todo
    @daily_task = DailyTask.find(params[:id])
    @daily_task.update_attribute(:done, params[:daily_task][:done])
    respond_to do |format|
      format.html { redirect_to daily_tasks_path }
      format.js
    end
  end

  def destroy
    @daily_task = DailyTask.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to daily_tasks_path }
      format.js
    end
  end

  private
  def daily_task_params
    params.require(:daily_task).permit(:name, :description)
  end
end
