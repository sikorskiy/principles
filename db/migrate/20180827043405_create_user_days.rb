class CreateUserDays < ActiveRecord::Migration[5.2]
  def change
    create_table :user_days do |t|
      t.references :user, foreign_key: true
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
