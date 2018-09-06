class DockingStation
  attr_reader :bike

  def initialize
    @bike_capacity = []
  end

  def release_bike
    if @bike_capacity.empty?
    fail 'No bikes available'
    else
      @bike_capacity
    end
  end

  def store
    @bike_capacity
  end

  def dock(bike)
    if @bike_capacity.count == 20
      fail 'Reached capacity'
    else
      @bike_capacity << bike
    end
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
