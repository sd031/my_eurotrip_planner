require 'spec_helper'

describe City do
  it { should belong_to (:country) }
  it { should have_many(:cities_per_itineraries) }
  it { should have_many(:itineraries).through(:cities_per_itineraries) }
end