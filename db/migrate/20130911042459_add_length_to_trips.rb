class AddLengthToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :length, :integer
  end
end
