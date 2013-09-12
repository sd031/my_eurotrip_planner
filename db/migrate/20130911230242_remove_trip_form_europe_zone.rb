class RemoveTripFormEuropeZone < ActiveRecord::Migration
  def down
    remove_column :city_per_itinerary_per_europe_zones, :trip_id
  end

  def change
    add_column :trips, :europe_zone_id, :integer

  end
end
