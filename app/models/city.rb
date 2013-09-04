class City < ActiveRecord::Base
  attr_accessible :country_id, :description, :name
  belongs_to :country
end
