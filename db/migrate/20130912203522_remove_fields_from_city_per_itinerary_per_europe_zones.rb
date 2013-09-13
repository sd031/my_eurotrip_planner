class RemoveFieldsFromCityPerItineraryPerEuropeZones < ActiveRecord::Migration
  def down
    remove_column :city_per_itinerary_per_europe_zones, :city
  end

  def change
    remove_column :city_per_itinerary_per_europe_zones, :city_id

  end
end
