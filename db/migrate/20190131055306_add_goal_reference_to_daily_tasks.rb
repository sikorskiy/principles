class AddGoalReferenceToDailyTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_tasks, :goal, foreign_key: true
  end
end
