class AddDayToUserDays < ActiveRecord::Migration[5.2]
  def change
    add_column :user_days, :day, :date
  end
end
