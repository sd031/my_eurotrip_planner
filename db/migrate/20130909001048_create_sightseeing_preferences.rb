class CreateSightseeingPreferences < ActiveRecord::Migration
  def change
    create_table :sightseeing_preferences do |t|
      t.string :name

      t.timestamps
    end
  end
end
