class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.date :day
      t.references :week, foreign_key: true

      t.timestamps
    end
  end
end
