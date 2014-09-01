require 'spec_helper'
require 'concierge'

describe Concierge do

  before(:each) do
    @hotel_las_vegas = Concierge.new()
  end

  it 'creates a concierge with 3000 lockers' do
    @hotel_las_vegas.lockers.count.should == 3000
  end

  context "checking in" do
    it 'creates a new ticket for every check-in' do 
      @hotel_las_vegas.check_in(Bag.new('S'))
      @hotel_las_vegas.check_in(Bag.new('S'))

      @hotel_las_vegas.tickets.count.should == 2
      @hotel_las_vegas.tickets.first.locker_id_code.should == "S1"
      @hotel_las_vegas.tickets.last.locker_id_code.should == "S2"
    end
  end

  context "checking out" do
    it 'can find bag to check out with ticket' do 
      @small_bag = Bag.new('S')
      @large_bag = Bag.new('L')

      @small_bag_ticket = @hotel_las_vegas.check_in(@small_bag)
      @large_bag_ticket = @hotel_las_vegas.check_in(@large_bag)

      @hotel_las_vegas.tickets.count.should == 2

      @hotel_las_vegas.check_out(@small_bag_ticket).should == @small_bag
      @hotel_las_vegas.check_out(@large_bag_ticket).should == @large_bag

      @hotel_las_vegas.tickets.count.should == 0 #checked out tickets should be removed from system      
    end

    it 'notifies if ticket has already been used to checkout with' do
      @small_bag = Bag.new('S')
      @small_bag_ticket = @hotel_las_vegas.check_in(@small_bag)
      @hotel_las_vegas.check_out(@small_bag_ticket).should == @small_bag
      @hotel_las_vegas.check_out(@small_bag_ticket).should == "THIS TICKET HAS ALREADY BEEN CHECKED OUT"
    end
  end

  it 'lists all currently held tickets' do 
    @hotel_las_vegas.tickets.should == []
    @ticket = @hotel_las_vegas.check_in(Bag.new('S'))
    @hotel_las_vegas.tickets.should == [@ticket]
  end

end