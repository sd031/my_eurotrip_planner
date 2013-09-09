class EuropeZoneCountry < ActiveRecord::Base
  attr_accessible :country_id, :europe_zone_id
  belongs_to :country
  belongs_to :europe_zone

end
