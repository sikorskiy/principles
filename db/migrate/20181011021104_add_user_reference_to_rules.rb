class AddUserReferenceToRules < ActiveRecord::Migration[5.2]
  def change
    add_reference :rules, :user, foreign_key: true
  end
end
