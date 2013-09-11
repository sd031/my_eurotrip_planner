require 'spec_helper'

describe CitiesPerItinerary do
  it { should belong_to (:city) }
  it { should belong_to (:itinerary) }

  it { should have_many(:city_per_itinerary_per_europe_zones) }
  it { should have_many(:europe_zones).through(:city_per_itinerary_per_europe_zones) }

end
