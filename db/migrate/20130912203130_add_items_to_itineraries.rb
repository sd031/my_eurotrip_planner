class AddItemsToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :origin_id, :integer
    add_column :itineraries, :destination_id, :integer
  end
end
