require 'bike'
describe Bike do
	it { is_expected.to respond_to :working?}
	it { is_expected.to respond_to :report_broken}
	it { is_expected.to respond_to :broken?}

	it 'returns false when not working' do
	expect(subject).to be_broken
	end

	it 'returns broken if not working' do
	expect(subject.working?).not_to be_true
end
end
