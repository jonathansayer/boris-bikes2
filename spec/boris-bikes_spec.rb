require 'boris-bikes'

describe 'boris-bikes' do 

	it 'returns uninitialized constant DockinStation' do
		expect(@station).to be_a DockinStation 
end