require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
  
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do
    subject.dock double :bike, broken?: false
    bike = subject.release_bike
    expect(bike).to be bike
  end

  

  it 'Has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'Setting capacity value' do
    expect(subject.capacity= 40).to eq 40
  end
# end
describe 'dock' do
  it 'raises an error when it is full' do
    20.times {subject.dock double :bike}
    bike = double :bike

    expect{subject.dock bike}.to raise_error 
    'Docking station full'
  end
end





  
 


# describe 'release_bike' do 

  it 'raises an error when there are no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  # it 'releases working bikes' do
  #   subject.dock Bike.new
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end
end