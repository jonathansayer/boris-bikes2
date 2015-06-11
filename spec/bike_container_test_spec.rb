require 'bike_container'
require './support/shared_examples_for_bike_containe'


class BikeContainerTest
	include BikeContainer
end

describe BikeContainerTest do
	it_behaves_like 'a bike container'
end