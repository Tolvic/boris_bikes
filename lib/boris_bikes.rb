class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
    #@bikes << bike
  end

end


class Bike
  def working?
    true
  end

end
