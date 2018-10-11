class RemoveUserDayFromDailyTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :daily_tasks, :user_day_id
  end
end
