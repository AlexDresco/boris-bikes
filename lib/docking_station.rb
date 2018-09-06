DEFAULT_CAPACITY = 20
class DockingStation
  attr_reader :bike

  def initialize
    @bike_capacity = []
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

  private

  def full?
    @bike_capacity.count >= DEFAULT_CAPACITY
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
