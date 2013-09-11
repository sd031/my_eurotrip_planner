class RemoveCOlumnsFromTrip < ActiveRecord::Migration
  def up
  end

  def down
    remove_column :trips, :start_date
    remove_column :trips, :end_date
  end

  def change
    remove_column :trips, :start_date
    remove_column :trips, :end_date
    end
end
