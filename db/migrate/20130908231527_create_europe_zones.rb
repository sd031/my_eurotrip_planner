class CreateEuropeZones < ActiveRecord::Migration
  def change
    create_table :europe_zones do |t|
      t.string :name

      t.timestamps
    end
  end
end
