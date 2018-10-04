class DockingStation
  attr_reader :bike

  def release_bike
    if @bike.nil?
      "No bikes"
    else
      @bike
    end
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
