require 'bag'
require 'locker'
require 'ticket'

class Concierge

	attr_reader :lockers, :tickets

	AVAILABLE_LOCKERS = {"S" => 1000, "M" => 1000, "L" => 1000}

	def initialize
		@tickets, @lockers = [], []
		AVAILABLE_LOCKERS.each do |size, amount|
			amount.times do |number|
				@lockers << Locker.new(size, number + 1)
			end
		end
	end

	def check_in(bag)
		check_in_ticket = place_in_available_locker(bag)
		@tickets << check_in_ticket
		return check_in_ticket
	end

	def check_out(ticket)
		@tickets.delete(ticket)
		empty_locker(ticket.locker_id_code)
	end

	def place_in_available_locker(bag)
		available_lockers = @lockers.select do |locker|
			locker.size == bag.size
			locker.empty?
		end
		locker = available_lockers.first
		locker.fill_locker(bag)
	end

	def empty_locker(locker_id_code)
  	located_locker = @lockers.select{|locker| locker.id_code == locker_id_code }.first
  	located_locker.empty_locker
  end

end