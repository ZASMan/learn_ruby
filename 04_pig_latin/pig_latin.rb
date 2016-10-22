#write your code here

#Update: Must be able to take in more than one word

def translate(word)
	vowels = ["a", "e", "i", "o", "u", "y"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
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
end
