class AddTitleColumnToWallsTable < ActiveRecord::Migration
  def change
    add_column :walls, :title, :string
  end
end
