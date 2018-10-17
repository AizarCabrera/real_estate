require 'pry'
class House

  attr_reader :address,:price,:rooms

  def initialize(price, address)
    @price     = price[1..-1].to_i
    @address   = address
    @rooms     = []
  # @category = category
  end

 def add_room(room)
   @rooms << room
 end

end
