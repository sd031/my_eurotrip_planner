Spec
require 'spec_helper'

describe Comment do
  it { should validate_presence_of :name }
  it { should validate_presence_of :comment }
  it { should ensure_length_of(:name).is_at_most(60) }
end