class CreateTransportationPreferences < ActiveRecord::Migration
  def change
    create_table :transportation_preferences do |t|
      t.string :name

      t.timestamps
    end
  end
end
