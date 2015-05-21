class Van
  DEFAULT_CAPACITY = 6
  def initialize(options = {}) 
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end
end