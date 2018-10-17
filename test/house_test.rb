require './helper.rb'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
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

  def test_if_it_can_add_one_room
    assert_equal [@room_1], @house.add_room(@room_1)
  end

  def test_if_it_can_add_more_than_one_room
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    assert_equal [@room_1, @room_2], @house.rooms
  end

  def test_if_it_can_add_several_rooms
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1, @room_2, @room_3, @room_4], @house.rooms
  end

  def test_if_rooms_have_category
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
  end

  def test_if_rooms_have_different_category
    @house.add_room(@room_4)
    assert_equal [@room_4], @house.rooms_from_category(:basement)
  end

  def test_it_house_has_an_area
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal 1900, @house.area
  end

  def test_it_can_have_a_price_per_square_foot
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal 210.53, @house.price_per_square_foot
  end

end

#
# pry(main)> house.price_per_square_foot
# #=> 210.53
#
# pry(main)> house.rooms_sorted_by_area
# #=> [#<Room:0x00007fccd297dc30...>, #<Room:0x00007fccd383c2d0...>, #<Room:0x00007fccd2985f48...>, #<Room:0x00007fccd29b5720...>]
#
# pry(main)> house.rooms_by_category
# #=> {:bedroom=>[#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>], :living_room=> [#<Room:0x00007fccd383c2d0...>], :basement=> [#<Room:0x00007fccd297dc30...>]}
# ```
