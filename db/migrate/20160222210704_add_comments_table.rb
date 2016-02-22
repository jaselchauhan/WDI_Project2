class AddCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |c|
      c.string :title
      c.string :comment

      c.timestamps null: false
    end
  end
end
