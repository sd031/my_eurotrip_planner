class TripsController < ApplicationController
  def home
    @trip = Trip.new
    print @trip.start_date
  end

  def create
    redirect_to itinerary_path
  end
end