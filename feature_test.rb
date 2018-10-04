require './lib/boris_bikes'
s1 = DockingStation.new
station_bikes = []
free_bikes = []
20.times{station_bikes.push(Bike.new)}

free_bikes.push(s1.release_bike)
free_bikes.push(s1.release_bike)
free_bikes.push(s1.release_bike)

s1.dock(free_bikes.shift)

# test for adding multiple bikes
#20.times{s1.dock(b1)}
#s1.release_bike
#s1.release_bike
