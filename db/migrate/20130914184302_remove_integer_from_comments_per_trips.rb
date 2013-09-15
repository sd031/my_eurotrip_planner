class RemoveIntegerFromCommentsPerTrips < ActiveRecord::Migration
  def up
    remove_column :comments, :integer
  end
  def down
    remove_column :comments, :integer
  end
  def change
    remove_column :comments, :integer
  end
end
