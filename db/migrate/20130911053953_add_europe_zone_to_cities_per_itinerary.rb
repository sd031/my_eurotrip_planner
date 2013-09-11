class AddEuropeZoneToCitiesPerItinerary < ActiveRecord::Migration
  def change
    add_column :cities_per_itineraries, :europe_zone, :integer
  end
end
