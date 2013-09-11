require 'spec_helper'

describe Trip do
  it {should have_many (:city_per_itinerary_per_europe_zones)}
end
