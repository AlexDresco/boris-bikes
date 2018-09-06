require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'raise another error when reached capacity' do
    bike = Bike.new
    subject.dock(Bike.new)
    expect {subject.dock(bike)}.to raise_error "Reached capacity"
  end

  describe '#release_bike' do
    it 'gives a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
      end

      it 'raises an error when there is no bike' do
        expect{ subject.release_bike}.to raise_error "No bikes available"
      end
    end

  it "dock bike can store a bike" do
    expect(subject.dock("first_bike")).to eq("first_bike")
  end

end
