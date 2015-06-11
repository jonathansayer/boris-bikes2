require 'bike'
describe Bike do
	it { is_expected.to respond_to :working?}
	it { is_expected.to respond_to :report_broken}
	it { is_expected.to respond_to :broken?}


	it 'returns broken if not working' do
	expect(subject.broken?).to eq false
end
it 'changes the broken? and working? methods' do
  subject.report_broken
  expect(subject).to be_broken
end

end
