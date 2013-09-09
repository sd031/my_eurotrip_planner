class EuropeZone < ActiveRecord::Base
  attr_accessible :name
  has_many :europe_zone_countries
  has_many :countries, through: :europe_zone_countries

end
