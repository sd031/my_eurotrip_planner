class CommentsPerTrip < ActiveRecord::Base
  attr_accessible :comment_id, :integer, :trip_id

  belongs_to :comment
  belongs_to :trip
end
