class DockingStation
  attr_reader :bikes
  attr_reader :capacity

  def initialize
    @capacity = 20
    @bikes = Array.new
  end

  def release_bike
    raise("No bikes") if @bikes.length == 0
    @bikes.shift
  end

  def dock(bike)
    raise('Unable to dock. At capacity') unless @bikes.length < 20
    @capacity -= 1
    @bikes.push(bike)
    raise "No bikes" if @bikes.nil?
    #fail "No bikes" if @bike.nil?
    @bikes
  end
end


class Bike
  def working?
    true
  end
end
