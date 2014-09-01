require 'spec_helper'
require 'locker'

describe Locker do

	before(:all) do 
		@small_locker_121 = Locker.new("S", 121)
		@medium_locker_123 = Locker.new("M", 123)
	end

	it 'creates small locker with number and size and empty status' do
		@small_locker_121.size.should == "S"
		@small_locker_121.number.should == 121
		@small_locker_121.content.should == 0
	end

	it 'creates medium locker with number and size and empty status' do
		@medium_locker_123.size.should == "M"
		@medium_locker_123.number.should == 123
		@medium_locker_123.content.should == 0
	end

end