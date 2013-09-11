class CitiesPerItinerary < ActiveRecord::Base
  attr_accessible :city_id, :itinerary_id
  belongs_to :city
  belongs_to :itinerary
end
