require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../customer.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class TestSong < MiniTest::Test

    def setup
      @song = Song.new("My Way", 2, "easy")
      @song1 = Song.new("Scatman", 2, "diff")

    end


  def test_song_name()
    assert_equal("My Way", @song.name())
  end

  def test_song_price()
      assert_equal(2, @song.price)
  end
  # #
  def test_song_level
    assert_equal("easy", @song.level())
    end

end
