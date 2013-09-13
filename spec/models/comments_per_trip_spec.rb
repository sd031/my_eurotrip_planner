require 'spec_helper'

describe CommentsPerTrip do
  it { should belong_to (:comment) }
  it { should belong_to (:trip) }
end
