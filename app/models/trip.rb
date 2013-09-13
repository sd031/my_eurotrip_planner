  class Trip < ActiveRecord::Base
  attr_accessible :sightseeing_preference_id, :transportation_preference_id,
                  :length, :europe_zone_id, :name

  belongs_to :europe_zone
  has_many :comments_per_trips
  has_many :comments, through: :comments_per_trips

end
