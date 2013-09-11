require 'spec_helper'

describe EuropeZone do
  it { should have_many :europe_zone_countries }
  it { should have_many(:countries).through(:europe_zone_countries) }

  it { should have_many(:city_per_itinerary_per_europe_zones) }
  it { should have_many(:cities).through(:city_per_itinerary_per_europe_zones) }
  it { should have_many(:itineraries).through(:city_per_itinerary_per_europe_zones) }
end
