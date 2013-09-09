class Country < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :cities
  has_many :europe_zone_countries
  has_many :europe_zones, through: :europe_zone_countries

end
