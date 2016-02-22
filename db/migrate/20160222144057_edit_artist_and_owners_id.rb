class EditArtistAndOwnersId < ActiveRecord::Migration
  def change
    remove_column :walls, :artist_ID
    remove_column :walls, :owner_ID
    add_column :walls, :artist_id, :integer
    add_column :walls, :owner_id, :integer
  end
end
