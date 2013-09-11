require 'spec_helper'

describe CityPerItineraryPerEuropeZone do
  it { should belong_to (:cities_per_itinerary) }
  it { should belong_to (:europe_zone) }
end
