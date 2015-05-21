require_relative '../lib/docking_station'
require_relative '../lib/van'
describe Van do
  let(:bike) { Bike.new }
  let(:station) { DockingStation.new }
  it 'should accept a bike' do
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end
  it 'should only accept a broken bike from the station' do
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end
end