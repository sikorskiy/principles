class CreateWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :weeks do |t|
      t.date :start
      t.date :finish

      t.timestamps
    end
  end
end
