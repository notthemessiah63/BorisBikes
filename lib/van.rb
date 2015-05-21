class Van
  DEFAULT_CAPACITY = 6
  def initialize(options = {}) 
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end
  def full?
    bike_count == @capacity
  end
  def bike_count
    @bikes.count
  end
  def load bike
    @bikes << bike
  end
end