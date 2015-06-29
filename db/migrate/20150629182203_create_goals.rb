class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :goal_title
      t.attachment :goal_img
      t.boolean :completed
      t.integer :priority, default: 0
      t.timestamps null: false
    end
  end
end
