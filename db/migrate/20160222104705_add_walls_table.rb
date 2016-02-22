class AddWallsTable < ActiveRecord::Migration
  def change
    create_table :walls do |w|
      w.boolean :is_painted
      w.string :image_before
      w.string :image_after
      w.string :location
    end
  end
end
