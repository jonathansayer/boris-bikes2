require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
  
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock bike
    bike = subject.release_bike
    expect(bike).to be_working
  end
# end


  it { is_expected.to respond_to :capacity}

  it 'returns 20' do
    expect(subject.capacity).to eq 20
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