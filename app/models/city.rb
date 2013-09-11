class City < ActiveRecord::Base
  attr_accessible :country_id, :description, :name
  belongs_to :country
  has_many :city_per_itinerary_per_europe_zones
  has_many :itineraries, through: :city_per_itinerary_per_europe_zones
  has_many :europe_zones, through: :city_per_itinerary_per_europe_zones

end
