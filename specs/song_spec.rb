require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestSong < MiniTest::Test

  def setup
    @Song1 = Song.new("Scatman", "rap" , 1)
    # @Song2 = Song.new("My Way", "classic" , 1)
    # @Song3 = Song.new("Love lift us up", "love" , 2)
    # @Song4 = Song.new("Slim Shady", "rap" , 1)
    # @Song5 = Song.new("Shima uta", "enka" , 1)
    # @Song6 = Song.new("Eidelweiss", "folk" , 1)
    # @Song7 = Song.new("We will rock you", "rock" , 4)


  end


end
