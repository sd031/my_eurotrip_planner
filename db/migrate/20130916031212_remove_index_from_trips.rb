class RemoveIndexFromTrips < ActiveRecord::Migration
  def change
    remove_index :trips, [:sightseeing_preference_id]
    remove_index :trips, [:transportation_preference_id]
    remove_index :trips, [:length]
  end
end
