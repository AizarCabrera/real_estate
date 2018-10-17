require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test

  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_if_it_exists
   assert_instance_of Room, @room
  end

 def test_if_it_has_category
   assert_equal :bedroom, @room.category
 end

 # def test_if_it_has_area
 #   room = Room.new
 #
 #   assert_equal 130, room.area
 # end


end
