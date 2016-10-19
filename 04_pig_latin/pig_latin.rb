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
	if not vowels.include(word[0]) 



def translate(word)

	if vowel?(word)
		#If this is true,  move firs tletter to end of word and add 'ay' to
		#end of word
		first_letter = word[0]
		no_first_letter = word[1, word.length]
		new_word = no_first_letter + first_letter + "ay"
	else
	end
end
