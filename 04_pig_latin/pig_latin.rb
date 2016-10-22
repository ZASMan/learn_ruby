#write your code here

#Also Account for Cases since letters could be lower or upper case

#Boolean Method to Check if Vowel to append ending
def vowel?(word)
	vowels = ["a", "e", "i", "o", "u", "y"]
	if vowels.include?(word[0])
		true
	else
		false
	end
end

#Y is sometimes a consonant, account for that?
#Also account for casing

def consonant(word)
	#check if the beginning of word has vowels
	#if it does not begin with a vowel (and thus a consonant)
	#move the first letter to the end of the word, and then add "ay"
	#to the end
	consonants = ["B", "C", "D", "F", "G","H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "X", "Z"] 
	if consonants.include?(word[0])
		true
	else
		false
	end
end

def translate(word)

	if vowel?(word)
		#If this is true, add 'ay' to end of the word
		#first_letter = word[0]
		#no_first_letter = word[1, word.length]
		word = word + "ay"
	#Break the string into an array and puts at least the first three letters
	#At the end of the word followed by an 'ay'
	elsif consonant?(word)
		#First Three Letters are Consonants
		if consonants.include?(word[0]) and consonants.include?(word[1]) and consonants.include?(word[2])
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
		end
	#Valid String is Not Passed Through
	else
		word = "Word must contain begin with a valid letter"
	end
end
