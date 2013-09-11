class RemoveCOlumnFromTrip < ActiveRecord::Migration
    def down
      remove_column :trips, :city_per_itinerary_per_europe_zone_id
    end

    def change
      remove_column :trips, :city_per_itinerary_per_europe_zone_id

    end
  end
