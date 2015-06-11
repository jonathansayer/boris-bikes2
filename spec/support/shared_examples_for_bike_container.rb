shared_examples_for 'a bike container' do 
	it 'has a default capacity when initialized' do
		expect(subjetc.capacity).to eq BikeConatiner::DEFAULT_CAPACITY
	end
end