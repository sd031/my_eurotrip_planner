namespace :db do
  desc "Fill database with sample data"

  task populate: :environment do
    make_trip
    make_europe_zone

  end

  def make_trip
    trip = Trip.create!(length: 1, europe_zone_id: 1, sightseeing_preference_id: 2,
              transportation_preference_id: 1, name: "Backpacker - short trip")

  end

  def make_europe_zone
    EuropeZone.create!(name: "East Europe")
  end
end