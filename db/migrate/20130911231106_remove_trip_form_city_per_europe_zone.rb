class RemoveTripFormCityPerEuropeZone < ActiveRecord::Migration
  def down
    remove_column :city_per_itinerary_per_europe_zones, :trip_id
  end

  def change
    remove_column :city_per_itinerary_per_europe_zones, :trip_id

  end
end
