class CityPerItineraryPerEuropeZone < ActiveRecord::Base
  attr_accessible :city_id, :itinerary_id, :europe_zone_id

  belongs_to :city
  belongs_to :europe_zone
  belongs_to :itinerary
  belongs_to :trip
end
