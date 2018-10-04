require 'boris_bikes'

describe DockingStation do
    it {is_expected.to respond_to :release_bike}

    it 'shows bikes in dock' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
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

    it 'releases the bike put in the dock' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "When attempting to release bike when no bikes in docking station return error" do
      expect{subject.release_bike}.to raise_error "No bikes"
    end

    it 'if dock at below capacity accept bikes' do
      expect{10.times {subject.dock(Bike.new)}}.not_to raise_error "Station full"
    end

    it 'if dock at capacity don\'t accept more and Error' do
      expect{20.times {subject.dock(Bike.new)}}.to raise_error "Station full"
    end



end
