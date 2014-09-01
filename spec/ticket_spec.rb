require 'spec_helper'
require 'ticket'

describe Ticket do

  before(:all) do
    @locker = Locker.new("S", "123")
    @ticket = Ticket.new(@locker)
  end

  it 'creates a ticket with locker code' do
    @ticket.locker_id_code.should == "S123"
  end

  it 'prints ticket' do
    @ticket.print.should == "PRINTED TICKET ======= S123"
  end

end