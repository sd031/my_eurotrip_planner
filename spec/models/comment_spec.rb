Spec
require 'spec_helper'

describe Comment do
  it { should validate_presence_of :name }
  it { should validate_presence_of :comment }
  it { should validate_presence_of :trip_id}
  it { should ensure_length_of(:name).is_at_most(60) }

  it { should belong_to :trip}
end