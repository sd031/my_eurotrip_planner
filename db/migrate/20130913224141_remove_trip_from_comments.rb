class RemoveTripFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :trip_id
  end
end
