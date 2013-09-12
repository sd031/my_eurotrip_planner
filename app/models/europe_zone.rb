class EuropeZone < ActiveRecord::Base
  attr_accessible :name
  has_many :europe_zone_countries
  has_many :countries, through: :europe_zone_countries

  has_many :city_per_itinerary_per_europe_zones
  has_many :cities, through: :city_per_itinerary_per_europe_zones
  has_many :itineraries, through: :city_per_itinerary_per_europe_zones

  has_one :trip

end
