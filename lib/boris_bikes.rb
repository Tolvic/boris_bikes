class DockingStation
  attr_reader :bike

  def release_bike
    raise("No bikes") if @bike.nil?
    @bike
  end

  def dock(bike)
    raise('Unable to dock. At capacity') unless @bike.nil?
    @bike = bike
  end

end


class Bike
  def working?
    true
  end

end
