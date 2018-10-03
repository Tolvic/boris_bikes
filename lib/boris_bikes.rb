class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
    #@bikes << bike
  end

  def bike
    @bike
  end

#  def dock_status
#      return @bikes
#ß  end
end


class Bike
  def working?
    true
  end

end
