require 'spec_helper'

describe Itinerary do

  it { should have_many(:city_per_itinerary_per_europe_zones) }
  it { should have_many(:europe_zones).through(:city_per_itinerary_per_europe_zones) }
  it { should have_many(:cities).through(:city_per_itinerary_per_europe_zones) }
end
