class AddCommentsColumnToWalls < ActiveRecord::Migration
  def change
      add_column :walls, :comments, :string
  end
end
