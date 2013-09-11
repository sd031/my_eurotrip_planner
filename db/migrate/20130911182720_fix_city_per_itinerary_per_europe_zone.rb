class FixCityPerItineraryPerEuropeZone < ActiveRecord::Migration
  def change
    rename_column :city_per_itinerary_per_europe_zones, :city_per_itinerary_id, :cities_per_itinerary_id
  end
end
