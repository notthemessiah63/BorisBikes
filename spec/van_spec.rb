require_relative '../lib/docking_station'
require_relative '../lib/van'
describe Van do
  station.dock(bike)
  expect(station.bike_count).to eq 1
end