class EditWallsTable2 < ActiveRecord::Migration
  def change
    remove_column :walls, :image_after, :string
    remove_column :walls, :image_before, :string
    add_column :walls, :image, :string
  end
end
