class Customer
  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
    @song = []

  end

  def song_count()
    return @song.size()
  end

end
