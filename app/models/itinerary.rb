class Itinerary < ActiveRecord::Base
  attr_accessible :name
  #has_many :city_per_itinerary_per_europe_zones
  #has_many :cities, through: :city_per_itinerary_per_europe_zones
  #has_many :europe_zones, through: :city_per_itinerary_per_europe_zones

  belongs_to :origin, class_name: "City"
  belongs_to :destination, class_name: "City"
end
