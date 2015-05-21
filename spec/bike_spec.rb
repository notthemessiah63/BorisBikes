require_relative '../lib/bike'
describe Bike do 

  let(:bike) {Bike.new}

  it 'should not be broken when created' do 
    expect(bike.broken?).to be false
  end
  it 'should allow breakage' do
    bike.break
    expect(bike.broken?).to be true
  end
  it 'should allow to be mended' do
    bike.break
    bike.fix
    expect(bike.broken?).to be false
  end
end
