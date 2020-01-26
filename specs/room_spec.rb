require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../customer.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class TestRoom < MiniTest::Test


  def setup
    @customer1 = Customer.new("JHG", 50)
    @customer2 = Customer.new("Sam", 150)
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

    def test_add_customer_to_room()
      @room.add_customer_to_room(@customer1)
      @room.add_customer_to_room(@customer2)
      assert_equal(2, @room.customer().count())
    end

    def test_add_song_to_room()
      @room.add_song_to_room(@song)
      assert_equal(1, @room.song().count())
    end

    def check_out_customer_from_room()
      @room.check_out_customer_from_room()
      assert_empty(0, @room.customer)
      assert_empty(0, @room.song)
    end

    def test_customer_song_start_empty()
      assert_equal([], @room.song)
    end

end
