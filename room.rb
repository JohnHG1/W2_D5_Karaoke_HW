class Room
  attr_reader :room, :song
  def initialize(name, price, capacity)
    @name = name
    @price = price
    @capacity = capacity
    @song = []
  end


  def get_room_name(name)
    return @room1
  end
  #
  #
  # def add_song(song_to_add)
  #     @song.push(song_to_add)
  #   end
  #
  #
  # def add_song(song)
  #   @song.push(song)
  # end

end
