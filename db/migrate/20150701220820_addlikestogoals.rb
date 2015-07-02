class Addlikestogoals < ActiveRecord::Migration
  def change
    add_column :goals, :likes, :integer, default: 0
  end
end
