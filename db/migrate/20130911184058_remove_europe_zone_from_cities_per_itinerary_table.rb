class RemoveEuropeZoneFromCitiesPerItineraryTable < ActiveRecord::Migration
  def changes
    remove_column :cities_per_itineraries, :europe_zone
  end
end
