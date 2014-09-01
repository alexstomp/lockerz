require 'spec_helper'
require 'ticket'

describe Ticket do
  
  it 'creates a ticket with locker code' do
    @locker = Locker.new("S", "123")
    @ticket = Ticket.new(@locker)

    @ticket.locker_id_code.should == "S123"
  end

end