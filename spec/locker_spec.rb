require 'spec_helper'
require 'locker'
require 'bag'

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

	it 'fills locker with bag' do
		@bag = Bag.new("M")
		ticket = @medium_locker_123.fill_locker(@bag)
		@medium_locker_123.content.should == @bag
		ticket.locker_id_code.should == "M123"
	end

	it 'empties locker and returns bag' do
		@bag = Bag.new("M")
		@medium_locker_123.fill_locker(@bag)
		@medium_locker_123.content.should == @bag # check that it is now filled

		@medium_locker_123.empty_locker.should == @bag # returns bag to concierge
		@medium_locker_123.content.should == 0
	end

	it 'returns proper id code' do
		@small_locker_121.id_code.should == "S121"
		@medium_locker_123.id_code.should == "M123"
	end

	it 'checks if a locker is empty' do
		@bag = Bag.new("M")
		@medium_locker_123.fill_locker(@bag)

		@small_locker_121.empty?.should == true
		@medium_locker_123.empty?.should == false
	end

end