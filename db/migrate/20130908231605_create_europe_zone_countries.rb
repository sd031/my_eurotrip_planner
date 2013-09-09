class CreateEuropeZoneCountries < ActiveRecord::Migration
  def change
    create_table :europe_zone_countries do |t|
      t.integer :europe_zone_id
      t.integer :country_id

      t.timestamps
    end
  end
end
