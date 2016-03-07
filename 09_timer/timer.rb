require 'time'

class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end
	
	def time_string
		all_seconds = @seconds
		
		hours = "00"
		minutes = "00"
		seconds = "00"
		
		if (all_seconds > 3600)
			hours = padded(all_seconds/3600, 2);
			all_seconds -= (all_seconds/3600)*3600
		end
		
		if (all_seconds > 60)
			minutes = padded(all_seconds/60, 2);
			all_seconds -= (all_seconds/60)*60
		end
		
		seconds = padded all_seconds, 2
		
		hours << ":" << minutes << ":" << seconds
	end
	
	private
	
	def padded val, pad
		new_val = val.to_s
		if (new_val.length > pad)
			new_val
		else
			z_pads = ""
			(pad-new_val.length).times {z_pads << "0"} 
			
			z_pads << new_val
		end
	end
	
end