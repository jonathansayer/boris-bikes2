require 'van'

describe Van do
	it { is_expected.to respond_to :unload_bike }
  
  it { is_expected.to respond_to(:load).with(1).argument }

  it 'unload fixed bikes' do
    subject.load double :bike, broken?: false
    bike = subject.unload_bike
    expect(bike).to be bike
  end

  

  it 'Has a default capacity' do
    expect(subject.capacity).to eq Van::DEFAULT_CAPACITY
  end

  it 'Setting capacity value' do
    expect(subject.capacity= 30).to eq 30
  end
# end
describe 'load' do
  it 'raises an error when van is full' do
    10.times {subject.load double :bike}
    bike = double :bike
    expect{subject.load bike}.to raise_error 
    'Van is full'
  end
  end
end