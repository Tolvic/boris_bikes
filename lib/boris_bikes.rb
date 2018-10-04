class DockingStation
  attr_reader :bike

  def release_bike

    if  @bike.nil?
      raise("No bikes")
    else
      @bike
    end
  end

  def dock(bike)
    @bike = bike

  end

end


class Bike
  def working?
    true
  end

end
