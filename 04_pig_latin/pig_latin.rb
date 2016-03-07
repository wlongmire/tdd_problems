def isVowel? ch
	vowels = ["a", "e", "i", "o", "u", "y"]
	
	!vowels.index(ch).nil?
end

def isConst? ch
	!isVowel? ch
end

def translate words
	words = words.split(" ")
	results = []
	
	words.each do |word|

		if isVowel? word[0]
			#vowel
			results.push ( word + "ay")
			
		else
			#const
			
			if word[1,2] == "qu" or (isConst? word[0] and isConst? word[1] and isConst? word[2])
				
				first_letter = word[0,3]
				rest_of_word = word[3, word.length-3]
				
			elsif (isConst? word[0] and isConst? word[1]) or word[0,2] == "qu"
			
				first_letter = word[0,2]
				rest_of_word = word[2, word.length-2]
			else
			
				first_letter = word[0]
				rest_of_word = word[1, word.length-1]
			end
			
			results.push ( rest_of_word + first_letter + "ay" )
		end
		
	end
	
	results.join(" ")
end

#puts translate "banana"