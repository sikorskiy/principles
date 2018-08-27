class CreateDailyTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_tasks do |t|
      t.references :user_day, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :done
      t.string :result_comment

      t.timestamps
    end
  end
end
