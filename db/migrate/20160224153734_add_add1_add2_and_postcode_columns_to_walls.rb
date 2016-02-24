class AddAdd1Add2AndPostcodeColumnsToWalls < ActiveRecord::Migration
  def change
    add_column :walls, :address1, :string
    add_column :walls, :address2, :string
    add_column :walls, :postcode, :string
  end
end
