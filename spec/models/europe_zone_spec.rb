require 'spec_helper'

describe EuropeZone do
  it { should have_many :europe_zone_countries }
  it { should have_many(:countries).through(:europe_zone_countries) }
end
