This program is for a hotel front desk/concierge. It utilizes the following classes: Bag, Locker, Ticket and Concierge. 

You can see specific spec files for each class. The Concierge tests show the functionality tests for checking in and checking out. 

To run tests: 

    $ rspec spec

To test in irb, fork over the repo:

    $ cd ./lockerz/; irb
  
  In the console:
  
    require './lib/bag.rb'
    require './lib/locker.rb'
    require './lib/ticket.rb'
    require './lib/concierge.rb'
    
    hotel = Concierge.new() # Initializes the hotel, lockers, and empty tickets array
    
    # Check in Two bags -- Bag size must be param, choose from: ["S", "M", "L"]
    # Returns the ticket that concierge would hand to customer
    
    hotel.check_in(Bag.new('S'))
    medium_bag_ticket = hotel.check_in(Bag.new('M'))
    
    hotel.tickets
    # Will show you there are now two tickets for the hotel
    # You can see the locker id code on the objects
    
    hotel.check_out(medium_bag_ticket) # returns medium bag
    
    hotel.tickets
    # You will see that the only ticket will be for a small locker (from code)
