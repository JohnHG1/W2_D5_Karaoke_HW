require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestSong < MiniTest::Test

    def setup
      @song = Song.new("My_Way", 2, "easy")
    end


  def test_song_name()
    assert_equal("My_Way", @song.song_name())
  end

  # def test_song_price()
  #     assert_equal(2, @song.price)
  # end
  # #
  # def test_song_has_level
  #   assert_equal("easy", @song1.level())
  #   end

end
