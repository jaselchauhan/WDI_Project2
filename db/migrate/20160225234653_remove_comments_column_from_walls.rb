class RemoveCommentsColumnFromWalls < ActiveRecord::Migration
  def change
    remove_column :walls, :comments, :string
  end
end
