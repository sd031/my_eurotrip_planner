require 'spec_helper'

describe Itinerary do
  it { should have_many(:cities_per_itineraries) }
  it { should have_many(:cities).through(:cities_per_itineraries) }
end
