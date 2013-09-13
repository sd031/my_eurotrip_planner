class AddIndexToTrips < ActiveRecord::Migration
    def change
      add_index :trips, [:sightseeing_preference_id]
      add_index :trips, [:transportation_preference_id]
      add_index :trips, [:length]
    end

end
