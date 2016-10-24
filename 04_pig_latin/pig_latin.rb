#write your code here

#Update: Must be able to take in more than one word

def translate(word)
	#In case there are multiple words, split into array seperated by spaces
	word_arr = word.split(" ")
	#Values for Vowels and Consonants
	vowels = ["a", "e", "i", "o", "u", "y"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
	#Execute Same code if Length is Equal to 1 (one word input)
	if word_arr.length == 1
		if vowels.include?(word[0])
			word = word + "ay"
		elsif consonants.include?(word[0]) and consonants.include?(word[1]) and consonants.include?(word[2])
			first_letter = word[0]
			second_letter = word[1]
			third_letter = word[2]
			no_first_three_letters_word = word [1, word.length]
			word = no_first_three_letters_word + first_letter + second_letter + third_letter + "ay"
		#First Two Letters are Consonants
		elsif consonants.include?(word[0]) and consonants.include?(word[1])
			first_letter = word[0]
			second_letter = word[1]
			no_first_two_letters_word = word [2, word.length]
			word = no_first_two_letters_word + first_letter + second_letter + "ay"
		#First Letter is Consonant
		elsif consonants.include?(word[0])
			first_letter = word[0]
			no_first_letter_word = word[1, word.length]
			word = no_first_letter_word + first_letter + "ay"
		#Valid String is Not Passed Through
		else
			word = "Word must contain begin with a valid letter"
		end
		#There are Multiple Words in the Array 
	elsif word_arr.length > 1
		#New Array to Push Individual Pig Latin Words To
		new_word_arr = []
		#Now We Need a Loop to Run All the Code Similar to lines 12-34
		word_arr.each do |word|
			if vowels.include?(word[0])
				word = word + "ay"
			elsif consonants.include?(word[0]) and consonants.include?(word[1]) and consonants.include?(word[2])
				first_letter = word[0]
				second_letter = word[1]
				third_letter = word[2]
				no_first_three_letters_word = word [1, word.length]
				word = no_first_three_letters_word + first_letter + second_letter + third_letter + "ay"
				#Push to New Word Array Below
				new_word_arr.push(word)
			#First Two Letters are Consonants
			elsif consonants.include?(word[0]) and consonants.include?(word[1])
				first_letter = word[0]
				second_letter = word[1]
				no_first_two_letters_word = word [2, word.length]
				word = no_first_two_letters_word + first_letter + second_letter + "ay"
				#Push to New Word Array Below
				new_word_arr.push(word)
			#First Letter is Consonant
			elsif consonants.include?(word[0])
				first_letter = word[0]
				no_first_letter_word = word[1, word.length]
				word = no_first_letter_word + first_letter + "ay"
				#Push to New Word Array Below
				new_word_arr.push(word)
			#Valid String is Not Passed Through
			else
				word = "Word must contain begin with a valid letter"
			end
		#End of Each Loop below	
		end
		#Make new_word_arr into a single string with spaces
		word = new_word_arr.join(" ")
	end
end
