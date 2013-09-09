require 'spec_helper'

describe Country do
  it { should have_many (:cities) }
  it { should have_many :europe_zone_countries }
  it { should have_many(:europe_zones).through(:europe_zone_countries) }
end