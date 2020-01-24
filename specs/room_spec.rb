require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../customer")
require_relative("../song")
require_relative("../room")

class TestCustomer < MiniTest::Test


  def setup
    @Customer1 = Customer.new("JHG", 50, "My Way")
    # @Customer2 = Customer.new("Zsolt", 70, "Edelweiss")
    # @Customer3 = Customer.new("Louise", 20, "I want your sex")
    @Room1 = Room.new("big_room", 25, 8)
    @Room2 = Room.new("small_room", 15, 2)
    @song1 = Song.new("1xsong", 2.5)
    # @song2 = Song.new("5xsong", 10)

  end
