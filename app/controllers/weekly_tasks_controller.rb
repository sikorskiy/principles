class WeeklyTasksController < ApplicationController
  def new
    @weekly_task = WeeklyTask.new
  end

  def create
    @weekly_task = WeeklyTask.new(name: params[:weekly_task][:name], description: params[:weekly_task][:description])
    @weekly_task.user_week = UserWeek.find_or_create_by(week_id: params[:weekly_task][:week_id], user_id: current_user.id)
    @weekly_task.save
    redirect_to weekly_tasks_path
  end

  def show

  end

  def index
    @weekly_tasks = WeeklyTask.all
  end
end
