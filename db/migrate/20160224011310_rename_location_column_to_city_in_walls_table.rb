class RenameLocationColumnToCityInWallsTable < ActiveRecord::Migration
  def change
    rename_column :walls, :location, :city
  end
end
