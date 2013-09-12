class City < ActiveRecord::Base
  attr_accessible :country_id, :description, :name
  belongs_to :country
  #has_many :city_per_itinerary_per_europe_zones
  #has_many :itineraries, through: :city_per_itinerary_per_europe_zones
  #has_many :europe_zones, through: :city_per_itinerary_per_europe_zones

  has_many :itineraries_as_origin, class_name: "Itinerary", foreign_key: "origin_id"
  has_many :itineraries_as_destination, class_name: "Itinerary", foreign_key: "destination_id"
end
