require 'spec_helper'

describe CityPerItineraryPerEuropeZone do
  it { should belong_to (:city) }
  it { should belong_to (:europe_zone) }
  it { should belong_to (:itinerary) }
  it { should belong_to (:trip) }
end
