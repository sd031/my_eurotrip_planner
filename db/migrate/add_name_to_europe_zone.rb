class AddNameToEuropeZone < ActiveRecord::Migration
  def change
    add_column :europe_zones, :name, :string
  end
end