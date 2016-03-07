class Temperature
	def initialize options
		if options.has_key?(:f)
			@temp = options[:f] 
		else
			@temp = (32.0 + options[:c]*(9.0/5.0))
		end
	end
	
	def in_fahrenheit
		@temp
	end

	def in_celsius
		(@temp - 32.0) * 5.0/9.0
	end
	
	def self.from_celsius (v)
		Temperature.new(c:v)
	end
	
	def self.from_fahrenheit (v)
		Temperature.new(f:v)	
	end
		
end