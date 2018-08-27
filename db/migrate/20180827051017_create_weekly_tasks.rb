class CreateWeeklyTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_tasks do |t|
      t.references :user_week, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :done
      t.integer :priority
      t.string :result_comment

      t.timestamps
    end
  end
end
