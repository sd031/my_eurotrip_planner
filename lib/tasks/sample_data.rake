namespace :db do
  desc "Fill database with sample data"

  task populate: :environment do
    make_trip

  end

  def make_trip
    trip = Trip.create!(length: 3, europe_zone_id: 1, sightseeing_preference_id: 2,
              transportation_preference_id: 1, name: "Backpacker - basic trip")
  end
end