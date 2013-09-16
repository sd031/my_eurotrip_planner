class CityPerItineraryPerEuropeZone < ActiveRecord::Base
  attr_accessible :itinerary_id, :europe_zone_id

  belongs_to :europe_zone
  belongs_to :itinerary
end
