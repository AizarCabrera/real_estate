require './helper.rb'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
  end

  def test_if_it_exists
    assert_instance_of House, @house
  end

  def test_if_it_has_a_price
    assert_equal 400000, @house.price
  end

  def test_if_it_has_an_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_if_it_starts_with_empty_rooms
    assert_equal [], @house.rooms
  end

 # pry(main)> house.rooms
 # #=> []
 #
 # pry(main)> room_1 = Room.new(:bedroom, 10, 13)
 # #=> #<Room:0x00007fccd29b5720...>
 #
 # pry(main)> room_2 = Room.new(:bedroom, 11, 15)
 # #=> #<Room:0x00007fccd2985f48...>
 #
 # pry(main)> house.add_room(room_1)
 # #=> [#<Room:0x00007fccd29b5720...]
 #
 # pry(main)> house.add_room(room_2)
 # #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
 #
 # pry(main)> house.rooms
 # #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
 # ```



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
