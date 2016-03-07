def echo v
	v
end

def shout v
	v.upcase
end

def repeat v, n=2
	result = ""
	n.times{result += v + " "}

	result.strip
end

def start_of_word w, len
	w[0, len]
end

def first_word w
	w.split(' ')[0]
end

def titleize t 
	result = ""
	t.split(' ').each{ |w| result += ['and', 'the'].index(x) ?  w : w.capitalize }
	result
end