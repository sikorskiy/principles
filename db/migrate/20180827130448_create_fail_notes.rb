class CreateFailNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :fail_notes do |t|
      t.string :body
      t.string :why_answer
      t.references :user_day, foreign_key: true

      t.timestamps
    end
  end
end
