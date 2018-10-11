class AddNameColumnToRules < ActiveRecord::Migration[5.2]
  def change
    add_column :rules, :name, :string
    add_column :rules, :rule_text, :string
  end
end
