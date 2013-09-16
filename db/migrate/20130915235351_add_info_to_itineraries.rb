class AddInfoToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :days_to_stay, :integer
    add_column :itineraries, :transportation, :string
  end
end
