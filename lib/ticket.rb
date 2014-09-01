require 'locker'

class Ticket

  attr_reader :locker_id_code

  def initialize(locker)
  	@locker_id_code = locker.id_code
  end

  def print
  	puts "\nPRINTED TICKET ======= #{@locker_id_code}\n" ## WORKS WHILE WE'RE IN THE CONSOLE IF TESTING IN IRB
  	return "PRINTED TICKET ======= #{@locker_id_code}"
  end

end