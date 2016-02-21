class AddUsersTable < ActiveRecord::Migration
  def change
    create_table(:users) do |u|
      u.string  :username
      u.string  :location
      u.string  :bio
      u.string  :image
      u.integer :rating

      u.timestamps null: false
    end
  end
end
