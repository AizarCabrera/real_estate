require 'pry'
class House

  attr_reader :category,
            :price,
            :address,
            :rooms

  def initialize(price, address)
    @price     = price
    @address   = address
  # @category = category
  # @rooms    = []
  end

 #
 # def price
 # amount = 400000
 # end
 #
 # def address
 # address = "123 sugar lane"
 # end
 #
 # def rooms
 # @rooms    = []
 # end
 #
 # def add_room
 #   @rooms    = []
 #
 # end

end
