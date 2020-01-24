require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../customer")
require_relative("../room")
require_relative("../song")


class TestCustomer < MiniTest::Test

  def setup
    @Customer1 = Customer.new("JHG", 50, "My Way")
    # @Customer2 = Customer.new("Zsolt", 70, "Edelweiss")
    # @Customer3 = Customer.new("Louise", 20, "I want your sex")
    @room_name1 = Room.new("big_room", 25, 8)
    @room_name2 = Room.new("small_room", 15, 2)
    @cost1 = Cost.new("1xsong", 2.5)
    # @cost2 = Cost.new("5xsong", 10)
  end
