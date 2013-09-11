class RemoveColumnFromCitiesPerItineraries < ActiveRecord::Migration
  def up
  end

  def down
    remove_column :cities_per_itineraries, :itinerary_id
    remove_column :cities_per_itineraries, :europe_zone
  end

  def change
    remove_column :cities_per_itineraries, :itinerary_id
    remove_column :cities_per_itineraries, :europe_zone
  end
end
