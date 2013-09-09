class Trip < ActiveRecord::Base
  attr_accessible :end_date, :europe_zone_id, :sighseeing_preference_id, :start_date, :transportation_preference_id
end
