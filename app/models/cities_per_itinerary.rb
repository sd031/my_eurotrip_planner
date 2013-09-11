class CitiesPerItinerary < ActiveRecord::Base
  attr_accessible :city_id, :itinerary_id
  belongs_to :city
  belongs_to :itinerary

  has_many :city_per_itinerary_per_europe_zones
  has_many :europe_zones, through: :city_per_itinerary_per_europe_zones

end
