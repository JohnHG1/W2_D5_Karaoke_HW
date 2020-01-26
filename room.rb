class Room
  attr_reader :name, :price, :capacity, :song, :customer

  def initialize(name, price, capacity)
    @name = name
    @price = price
    @capacity = capacity
    @song = []
    @customer = []

  end


  def add_customer_to_room(customer)
    @customer << customer
  end

  def add_song_to_room(song)
    @song << song
  end

  def check_out_customer_from_room()
    @customer = []
    @song = []
  end

  def customer_song_start_empty()
    @customer = []
    @song = []
  end



end
