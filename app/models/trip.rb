  class Trip < ActiveRecord::Base
  attr_accessible :sightseeing_preference_id, :transportation_preference_id,
                  :length, :europe_zone_id, :name

  belongs_to :europe_zone
  has_many :comments, dependent: :destroy

end
