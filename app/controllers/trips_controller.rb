class TripsController < ApplicationController
  def home
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(params[:trip])
  end
end