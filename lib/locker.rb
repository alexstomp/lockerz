class Locker

  attr_reader :content # 0 = empty; <BAG> = full
  attr_reader :id_code # Code on ticket to locate locker
  attr_reader :size, :number

  def initialize(size, number)
    @content = 0 # empty
  	@size = size
  	@number = number
  end

  def fill_locker(bag)
  	@content = bag
  	return Ticket.new(self)
  end

  def empty_locker
  	bag = @content
  	@content = 0
  	return bag
  end

  def id_code
  	return "#{@size}#{@number}"
  end

  def empty?
  	return true if @content == 0
  	return false
  end

end