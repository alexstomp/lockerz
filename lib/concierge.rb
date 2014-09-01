require 'bag'
require 'locker'
require 'ticket'

class Concierge

	attr_reader :lockers

	AVAILABLE_SIZES = ["S", "M", "L"]
	LOCKERS_PER_SIZE = 1000

	def initialize
		@lockers = []
		AVAILABLE_SIZES.each do |size|
			LOCKERS_PER_SIZE.times do |number|
				@lockers << Locker.new(size, number + 1)
			end
		end
	end

	def check_in(bag)
		@lockers.select do |locker|
			locker.size == bag.size
			locker.content == 0
		end
	end

	private

	def self.find_locker(id_code)
  	numer = id_code
  	size = numer.slice!(0)
  end

end