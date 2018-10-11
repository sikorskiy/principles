class RemoveReferenceFromRules < ActiveRecord::Migration[5.2]
  def change
    remove_reference :rules, :user_day
    add_column :rules, :day, :date
  end
end
