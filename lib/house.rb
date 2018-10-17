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
      room.area
    end.sum
  end

  def price_per_square_foot
    (price.to_f/area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end.reverse
  end

  def rooms_by_category
    @rooms.group_by do |room|
      room.category
    end
  end

end
