class Comment < ActiveRecord::Base

  belongs_to :wall

  # belongs_to :wall,  foreign_key: "comment_id", class_name: "Wall"

end