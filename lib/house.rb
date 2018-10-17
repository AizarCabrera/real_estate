require './lib/room'
require 'pry'

class House

  attr_reader :address,:price,:rooms

  def initialize(price, address)
    @price     = price[1..-1].to_i
    @address   = address
    @rooms     = []
  end

  def add_room(room)
   @rooms << room
  end

  def rooms_from_category(room_category)
    @rooms.find_all do |room|
     room.category == room_category
    end
  end

  def area
    @rooms.map do |room|
      area = room.area
    end.sum
  end



end
