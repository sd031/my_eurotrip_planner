class ModifyCOlumnsFromTrip < ActiveRecord::Migration
    def change
      rename_column :trips, :sighseeing_preference_id, :sightseeing_preference_id
    end
end

