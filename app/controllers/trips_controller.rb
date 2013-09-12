class TripsController < ApplicationController
  def home
    @trip = Trip.new
  end

  def create
    print @trip
    if(Trip.exists?(params[:trip]))
      redirect_to itinerary_path(:trip)
    end
    end
end