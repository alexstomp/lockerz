class Ticket

  attr_reader :locker_id_code

  def initialize(locker)
  	@locker_id_code = locker.id_code
  end

  def print
  	return "PRINTED TICKET ======= #{@locker_id_code}"
  end

end