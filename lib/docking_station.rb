class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize(options = {}) 
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock bike
    @bikes << bike
  end

  def remove bike
    @bikes.delete bike
  end
  def full?
    bike_count == @capacity
  end
  def available_bikes
    @bikes.reject { |bike| bike.broken?}
  end
  def broken_bikes
    @bikes.reject { |bike| bike.okay}
  end
end