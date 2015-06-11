class Bike
	attr_accessor :broken
	def intialize 
		@broken = false
	end

	def working?
		!broken
		
	end

	def report_broken
		self.broken = true
	end

	def broken?
	!working?
	end
end