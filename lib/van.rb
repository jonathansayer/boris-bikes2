
require_relative 'bike'

class Van
  DEFAULT_CAPACITY = 10

  attr_accessor :capacity


  def initialize
    @bikes=[]
    @capacity=DEFAULT_CAPACITY
  end


  def unload_bike
  	#Bike.new
   fail 'No bikes in van' if empty?

    @bikes.pop

  end

  def load bike
    fail 'Van is full' if full?
  
    @bikes << bike

  end

  def full?
    @bikes.count >=capacity
  end

  def empty?
    @bikes.empty?
  end
end