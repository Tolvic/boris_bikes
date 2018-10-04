class DockingStation
  attr_reader :bikes
  attr_reader :capacity

  def initialize
    @capacity = 20
    @bikes = Array.new

  end

  def release_bike
<<<<<<< HEAD
    raise("No bikes") if @bikes.length == 0
    @bikes.shift
  end

  def dock(bike)
    raise('Unable to dock. At capacity') unless @bikes.length < 20
    @capacity -= 1
    @bikes.push(bike)
=======
    #raise "No bikes" if @bike.nil?
    fail "No bikes" if @bike.nil?
    @bike
  end

  def dock(bike)

    raise "Station full" unless @bike.nil?
    #unless @bike.nil? raise "Station full"
    @bike = bike
    #@bikes << bike
>>>>>>> 6186abdd529b2bf1076cc2703817f503b32e7e16
  end

end


class Bike
  def working?
    true
  end

end
