Spec
require 'spec_helper'

describe Comment do
  it { should validate_presence_of :name }
  it { should validate_presence_of :comment }
  it { should ensure_length_of(:name).is_at_most(60) }

  it { should have_many(:comments_per_trips) }
  it { should have_many(:trips).through(:comments_per_trips) }
end