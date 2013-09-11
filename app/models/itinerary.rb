class Itinerary < ActiveRecord::Base
  attr_accessible :name
  has_many :cities_per_itineraries
  has_many :cities, through: :cities_per_itineraries
end
