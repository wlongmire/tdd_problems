def add x,y 
	x + y
end

def subtract x,y 
	x - y
end

def sum a
	a.inject(0) {|sum, v| sum += v}
end

def multiply x, y
	x * y
end

def power x, n
	prod = 1
	n.times {|i| prod *= x}
	
	prod
end

def factorial x
	result = 1
	x.times { |i| result*=i }

	result
end