require 'boris_bikes'

describe DockingStation do
    it {is_expected.to respond_to :release_bike}

    it 'shows bikes in dock' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks the bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'returns the docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

    it 'releases the bike put in the dock' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "When attempting to release bike when no bikes in docking station return error" do
<<<<<<< HEAD
      expect{subject.release_bike}.to raise_error("No bikes")
=======
      expect{subject.release_bike}.to raise_error "No bikes"
    end

    it 'if dock at below capacity accept bikes' do
      expect{10.times {subject.dock(Bike.new)}}.not_to raise_error "Station full"
    end

    it 'if dock at capacity don\'t accept more and Error' do
      expect{20.times {subject.dock(Bike.new)}}.to raise_error "Station full"
>>>>>>> 6186abdd529b2bf1076cc2703817f503b32e7e16
    end

    it "docking station can accept more than 1 bike" do
      bike = Bike.new
      2.times{subject.dock(bike)}
      expect(subject.bikes).to eq([bike, bike])
    end

=begin
    it 'checks that bikes cant be docked when at capacity' do
      bike = Bike.new
      subject.dock(bike)
      expect{subject.dock(bike)}.to raise_error("Unable to dock. At capacity")
    end
=end

#  ------- spec for capacity
    it "Check for capacity" do
      20.times{subject.dock(Bike.new)}
      expect(subject.bikes.length).to eq 20
    end

    it "check fo remaining capcity" do
      5.times{subject.dock(Bike.new)}
      expect(subject.capacity).to eq 15
    end

    it "Cannot release the same bike more than once" do
      1.times{subject.dock(Bike.new)}
      subject.release_bike
      expect{subject.release_bike}.to raise_error("No bikes")
    end

# ----------------------------

end
