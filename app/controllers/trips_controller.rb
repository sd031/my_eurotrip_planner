class TripsController < ApplicationController
  def home
    @trip = Trip.new
  end

  def create
    if Trip.exists?({length: params[:trip][:length],
                    sightseeing_preference_id: params[:trip][:sightseeing_preference_id],
                    transportation_preference_id: params[:trip][:transportation_preference_id],
                    europe_zone_id: params[:trip][:europe_zone_id]})
        @trip = Trip.find(length = params[:trip][:length],
                          sightseeing_preference_id = params[:trip][:sightseeing_preference_id],
                          transportation_preference_id = params[:trip][:transportation_preference_id],
                          europe_zone_id = params[:trip][:europe_zone_id])
    else
      @trip = Trip.new
      render "home"
    end

  #  else
  #    @trip = Trip.new
  #    respond_to do |format|
  #      format.html {   }
  #      format.js
  #    end
  #    render "home"
  #  end
  end
end