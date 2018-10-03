require 'boris_bikes'
=begin
describe DockingStation do
  it 'docking station instances to respond to the method release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
=end

describe DockingStation do
    it {is_expected.to respond_to :release_bike}

    it 'releases working bikes' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks the bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns the docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

end
