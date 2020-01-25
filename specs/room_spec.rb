require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../customer.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class TestRoom < MiniTest::Test


  def setup
    @Customer1 = Customer.new("JHG", 50)
    @room1 = Room.new("bigroom", 25, 8)
    @song_name1 = Song.new("My Way", 2)
    @shop = Shop.new("Hip", 1500)

  end

    def test_can_get_song_price
      assert_equal(2, @song_name1.cost)
    end

    def test_shop_has_name()
      assert_equal("Hip", @shop.name)
    end
  #
  # def test_can_add_song_to_customer()
  #   customer = @Customer1
  #   assert_equal(1, @customer.song_count())
  # end
  #
  # def test_can_sell_pet_to_customer()
  #   customer = Customer.new("Jack Jarvis", 1000)
  #   @pet_shop.sell_pet_to_customer("Sir Percy", customer)
  # end

end
