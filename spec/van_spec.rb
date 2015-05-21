require_relative '../lib/docking_station'
require_relative '../lib/van'

describe Van do
  let(:bike) { Bike.new }
  let(:station) { DockingStation.new }
  let(:van) { Van.new }
  it 'should accept a bike' do
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end
  it 'should only accept a broken bike from the station' do
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end
  it 'should recognise van is full' do
    expect(van.full?).not_to be true
    6.times {van.load(Bike.new)}
    expect(van.full?).to be true
  end
end