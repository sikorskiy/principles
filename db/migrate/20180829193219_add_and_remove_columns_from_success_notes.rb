class AddAndRemoveColumnsFromSuccessNotes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :success_notes, :user_day
    add_reference :success_notes, :user
    add_column :success_notes, :day, :date
  end
end
