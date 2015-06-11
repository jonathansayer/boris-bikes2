
require_relative 'bike'

class DockingStation

attr_reader :capacity

def initialize
	@capacity=20
end
  def release_bike
  	Bike.new
   fail 'No bikes available' unless @bike

    @bike
  end

  def dock bike
    @bike = bike
  end
end