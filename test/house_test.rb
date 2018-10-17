require './helper.rb'

class HouseTest < Minitest::Test

  def setup
    @house = House.new
  end

  def test_if_it_exists
   assert_instance_of House, @house
  end
 #
 # def test_if_it_has_a_price
 #   house = House.new
 #
 #   assert_equal 400000, house.price
 # end
 #
 # def test_if_it_has_an_address
 #   house = House.new
 #
 #   assert_equal "123 sugar lane", house.address
 # end
 #
 # def test_if_it_has_rooms
 #   house = House.new
 #
 #   assert_equal [], house.rooms
 # end
 #
 # def test_if_it_can_have_more_than_one_room
 #   house = House.new
 #   room_1 = Room.new
 #   room_2 = Room.new
 #
 #   assert_instance_of Room, room_1
 #   assert_instance_of Room, room_2
 # end
 #
 # def test_if_it_can_add_rooms
 #   house = House.new
 #   room_1 = Room.new
 #   room_2 = Room.new
 #
 #   assert_equal[<Room:0x00007fccd29b5720...] , house.add_room
 # end
 #


end
