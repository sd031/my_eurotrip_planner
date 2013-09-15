require 'spec_helper'

describe Trip do

  it {should belong_to (:europe_zone)}
  it {should respond_to :name}

end
