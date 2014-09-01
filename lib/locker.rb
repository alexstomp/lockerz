require 'bag'

class Locker

  attr_reader :content # 0 = empty; <BAG> = full
  attr_reader :size, :number

  def initialize(size, number)
    @content = 0 # empty
  	@size = size
  	@number = number
  end

  def fill_locker(bag)
  	@content = bag
  end

  def empty_locker
  	@content = 0
  end

  def id_code
  	return "#{@size}#{@number}"
  end

end