

class DockingStation
  #
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_capacity = []
    @capacity = capacity
  end

  def release_bike
      fail 'No bikes available' if empty?
      @bike_capacity.pop
  end

  def store
    @bike_capacity
  end

  def dock(bike)
      fail 'Reached capacity' if full?
      @bike_capacity << bike
  end
  attr_reader :bike
  private



  def full?
    @bike_capacity.count >= capacity
  end

  def empty?
    @bike_capacity.empty?
  end

  # def show_dock
  #   puts @store
  # end
end

class Bike
  attr_reader :bike
  def initialize
    @bike = bike
  end

  def working?
    true
  end
end
