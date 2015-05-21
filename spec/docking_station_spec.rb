require_relative '../lib/docking_station'

describe DockingStation do
  let(:bike) { Bike.new }
  let(:station) { DockingStation.new }

  it 'should accept a bike' do
    expect(station.bike_count).to eq 0
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end

  it 'should allow bike removal' do
    expect(station.bike_count).to eq 0
    station.remove(bike)
    expect(station.bike_count).to eq 0
  end
  it 'should know when full' do
    expect(station.full?).not_to be true
    20.times {station.dock(Bike.new)}
    expect(station.full?).to be true
  end
  it 'should provide list avail bikes' do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break
    station.dock(working_bike)
    station.dock(broken_bike)
    expect(station.available_bikes).to eq([working_bike])
  end
end