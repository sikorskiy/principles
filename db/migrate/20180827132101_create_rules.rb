class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :body
      t.string :question
      t.references :user_day, foreign_key: true

      t.timestamps
    end
  end
end
