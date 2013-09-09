class TripsController < ApplicationController
  def home
    @trip = Trip.new#(end_date: "1", europe_zone_id:1, sighseeing_preference_id: 1, start_date: "1", transportation_preference_id: 1)
  end

  def create
      redirect_to itinerary_path
  end
end