class AddResultAndDescriptionToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :result, :integer
    add_column :days, :description, :text
  end
end
