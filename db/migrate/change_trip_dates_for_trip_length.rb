class AddColumnToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :length, :integer
    remove_column :trips, :start_date
    remove_column :trips, :end_date
  end
end