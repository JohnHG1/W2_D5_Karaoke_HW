require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestSong < MiniTest::Test

  def setup
    @song_name1 = Song.new("My Way", 2)
    @song2 = Song.new("Freak", 2)

  end


end
