class City < ActiveRecord::Base
  attr_accessible :country_id, :description, :name
  belongs_to :country
  has_many :cities_per_itineraries
  has_many :itineraries, through: :cities_per_itineraries
end
