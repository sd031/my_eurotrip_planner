class CityPerItineraryPerEuropeZone < ActiveRecord::Base
  attr_accessible :cities_per_itinerary_id, :europe_zone_id

  belongs_to :cities_per_itinerary
  belongs_to :europe_zone
end
