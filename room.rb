class Room
  attr_reader :room, :songs
  def initialize(name, cost, capacity)
    @name = name
    @cost = cost
    @capacity = capacity
    @songs = []
  end
