require 'spec_helper'
require 'concierge'

describe Concierge do

  it 'creates a concierge with 3000 lockers' do
    @hotel_las_vegas = Concierge.new()
    @hotel_las_vegas.lockers.count.should == 3000
  end

end