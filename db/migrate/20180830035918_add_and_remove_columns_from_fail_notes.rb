class AddAndRemoveColumnsFromFailNotes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :fail_notes, :user_day
    add_column :fail_notes, :day, :date
    add_reference :fail_notes, :user
  end
end
