class AddUserAndDayToDailyTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_tasks, :user, foreign_key: true
    add_column :daily_tasks, :day, :date
  end
end
