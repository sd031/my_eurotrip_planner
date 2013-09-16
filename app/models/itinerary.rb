class Itinerary < ActiveRecord::Base
  attr_accessible :name

  belongs_to :origin, class_name: "City"
  belongs_to :destination, class_name: "City"
end
