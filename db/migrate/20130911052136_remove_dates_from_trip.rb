class RemoveDatesFromTrip < ActiveRecord::Migration
  def changes
    remove_column :trips, :start_date
    remove_column :trips, :end_date
  end
end
