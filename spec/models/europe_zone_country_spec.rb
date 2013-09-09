require 'spec_helper'

describe EuropeZoneCountry do
  it { should belong_to (:europe_zone) }
  it { should belong_to (:country) }
end
