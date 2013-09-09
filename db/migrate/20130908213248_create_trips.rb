class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :end_date
      t.integer :europe_zone_id
      t.integer :sighseeing_preference_id
      t.string :start_date
      t.integer :transportation_preference_id

      t.timestamps
    end
  end
end
