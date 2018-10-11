class AddWeekToUserWeeks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_weeks, :week_start, :date
  end
end
