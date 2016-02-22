class EditWallsTable < ActiveRecord::Migration
  def change
    add_column :walls, :owner_ID, :string
    add_column :walls, :artist_ID, :string
  end
end
