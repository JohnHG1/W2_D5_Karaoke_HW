require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../customer.rb")
require_relative("../room.rb")
require_relative("../song.rb")


class TestCustomer < MiniTest::Test

  def setup()
   @customer1 = Customer.new("John", 50)
   @customer2 = Customer.new("Sam", 150)
  end

  def test_customer_has_name()
    assert_equal("John", @customer1.name)
  end

  def test_customer_has_cash()
      assert_equal(150, @customer2.cash)
  end

  def test_customer_song_start_empty()
    assert_equal(0, @customer1.song_count())
  end

end
