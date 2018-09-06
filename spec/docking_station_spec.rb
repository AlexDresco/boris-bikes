require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'creates a constant called capacity when initialized' do
    expect(subject.capacity).to eq(subject.capacity)
  end

  describe 'initialization' do
    it 'has variable capacity' do
      docking_station = DockingStation.new(50)
      50.times {docking_station.dock(Bike.new)}
      expect{docking_station.dock(Bike.new)}.to raise_error 'Reached capacity'
    end
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq([bike])
  end


  describe '#release_bike' do
      it 'raises an error when there is no bike' do
        expect{ subject.release_bike}.to raise_error "No bikes available"
      end
    end

  it "dock bike can store a bike" do
    expect(subject.dock("first_bike")).to eq(["first_bike"])
  end

end
