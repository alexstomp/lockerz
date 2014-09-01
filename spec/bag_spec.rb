require 'spec_helper'
require 'bag'

describe Bag do
  
  it 'creates a S bag' do
    small_bag = Bag.new("S")
    small_bag.size.should == "S"
  end

  it 'creates a M bag' do
    medium_bag = Bag.new("M")
    medium_bag.size.should == "M"
  end

  it 'creates a L bag' do
    large_bag = Bag.new("L")
    large_bag.size.should == "L"
  end

end