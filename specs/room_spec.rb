require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../customer.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class TestRoom < MiniTest::Test


  def setup
    @customer1 = Customer.new("JHG", 50)
    @room = Room.new("bigroom", 25, 8)
    @room2 = Room.new("smallroom", 15, 3)

  end


    def test_room_has_name()
      assert_equal("bigroom", @room.name())
    end

    def test_room_has_price()
      assert_equal(25, @room.price())
    end

    def test_room_capacity()
      assert_equal(3, @room2.capacity())
    end

  #
  # def test_can_add_song_to_room()
  #   room = @room2
  #   assert_equal(1, @song.push())
  # end
  #
  #
  # end

end
