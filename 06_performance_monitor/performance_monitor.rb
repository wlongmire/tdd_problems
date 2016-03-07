require 'time'

def measure x=1
	start = Time.now
	
	puts start
	x.times { yield }
	
	Time.now - start
end