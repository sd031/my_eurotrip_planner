class CreateCitiesPerItineraries < ActiveRecord::Migration
  def change
    create_table :cities_per_itineraries do |t|
      t.integer :city_id
      t.integer :itinerary_id

      t.timestamps
    end
  end
end
