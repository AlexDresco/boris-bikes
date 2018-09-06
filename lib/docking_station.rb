class DockingStation
  attr_reader :bike

  def initialize
    @store = []
  end

  def release_bike
    fail 'No bikes available' unless @bike
      @bike
  end

  def store
    @store
  end

  def dock(bike)
    fail 'Reached capacity' unless @bike.nil?
    @bike = bike
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
