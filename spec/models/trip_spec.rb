require 'spec_helper'

describe Trip do

  it {should belong_to (:europe_zone)}
  it { should have_many(:comments_per_trips) }
  it { should have_many(:comments).through(:comments_per_trips) }

  it {should respond_to :comments }
  it {should respond_to :name}

end
