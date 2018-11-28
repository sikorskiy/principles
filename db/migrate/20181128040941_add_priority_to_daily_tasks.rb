class AddPriorityToDailyTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_tasks, :priority, :string
  end
end
