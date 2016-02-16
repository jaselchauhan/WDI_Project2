class AddWallsTable < ActiveRecord::Migration
  def change

    create_table(:walls) do |w|
      w.string :title
      w.string :description
      w.string :ideal_design
      w.string :image

      w.timestamps null: false

    end
  end
end
