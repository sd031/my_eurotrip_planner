require 'spec_helper'

describe City do
  it { should belong_to (:country) }
  it { should have_many(:city_per_itinerary_per_europe_zones) }
  it { should have_many(:itineraries).through(:city_per_itinerary_per_europe_zones) }
  it { should have_many(:europe_zones).through(:city_per_itinerary_per_europe_zones) }
end