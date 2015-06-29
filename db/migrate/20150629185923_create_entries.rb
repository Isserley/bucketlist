class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :entry_title
      t.text  :entry_desc
      t.datetime :entry_date
      t.attachment :entry_img
      t.belongs_to :goal
      t.timestamps null: false
    end
  end
end
