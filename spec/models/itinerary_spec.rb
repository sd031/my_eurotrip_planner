require 'spec_helper'

describe Itinerary do
  it { should have_many(:cities_per_itinerary) }
  it { should have_many(:cities).through(:cities_per_itinerary) }
end
