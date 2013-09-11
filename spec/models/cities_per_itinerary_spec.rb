require 'spec_helper'

describe CitiesPerItinerary do
  it { should belong_to (:city) }
  it { should belong_to (:itinerary) }
end
