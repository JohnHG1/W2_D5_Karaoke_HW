require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestSong < MiniTest::Test

    def setup
      @song1= Song.new("My_Way", 2)
    end


  def test_song_has_name()
    assert_equal("My_Way", @song1.name())
  end

  # def test_song_price()
  #     assert_equal(2, @Song1.price)
  # end
  # #
  # def test_song_has_level
  #   assert_equal("easy", @song1.level())
  #   end

end
