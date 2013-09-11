class AddTripTpCitiesPerItineraryPerEuropeZone < ActiveRecord::Migration
  def change
    add_column :city_per_itinerary_per_europe_zones, :trip_id, :integer
  end
end
