class Trip < ActiveRecord::Base
  attr_accessible :city_per_itinerary_per_europe_zone_id, :sightseeing_preference_id, :transportation_preference_id,
                  :length

  has_many :city_per_itinerary_per_europe_zones

end
