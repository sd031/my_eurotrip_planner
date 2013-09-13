class CreateCommentsPerTrips < ActiveRecord::Migration
  def change
    create_table :comments_per_trips do |t|
      t.string :trip_id
      t.string :integer
      t.integer :comment_id

      t.timestamps
    end
  end
end
