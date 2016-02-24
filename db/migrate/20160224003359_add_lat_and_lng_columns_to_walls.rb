class AddLatAndLngColumnsToWalls < ActiveRecord::Migration
  def change
    add_column :walls, :lat, :float
    add_column :walls, :lng, :float
  end
end
