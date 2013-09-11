class CreateCityPerItineraryPerEuropeZones < ActiveRecord::Migration
  def change
    create_table :city_per_itinerary_per_europe_zones do |t|
      t.integer :city_per_itinerary_id
      t.integer :europe_zone_id

      t.timestamps
    end
  end
end
