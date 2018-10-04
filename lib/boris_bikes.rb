class DockingStation
  attr_reader :bike

  def release_bike
    raise "No bikes" if @bike.nil?
    @bike
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
