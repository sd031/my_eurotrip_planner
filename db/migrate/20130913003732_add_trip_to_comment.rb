class AddTripToComment < ActiveRecord::Migration
  def change
    add_column :comments, :trip_id, :integer
  end
end
