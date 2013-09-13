require 'spec_helper'

describe Trip do

  it {should belong_to (:europe_zone)}
  it {should have_many :comments }

  it {should respond_to :comments }
  it {should respond_to :name}

end
