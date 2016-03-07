def reverser
	yield.split(' ').map { |w| w.reverse }.join(' ')
end

def adder x = 1
	yield + x
end

def repeater r = 1
	r.times do
		yield
	end
end