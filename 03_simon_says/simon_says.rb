#write your code here

def echo(string)
	string
end

def shout(*strings)
	array = [] 
	strings.each do |string|
		array.push(string)
	end
	array.join(" ").upcase
end

def repeat(string, n=2)
	if n == nil
		string + " " + string
	else
		array = []
		array.concat([string] * n)
		array.join(" ")
	end
end

def start_of_word(string, n)
	string[0,n]
end

def first_word(string)
	arr = string.split(/\W+/)
	arr[0]
end

def titleize(string)
	#Not included unless at beginning of string
	little_words = ['and', 'over', 'the']
	#"Pizza is good" would become array = ["Pizza", "is", "good"]
	array = string.split(" ")
	if array.length > 1
		#Capitalize words that aren't included in little words
		array.each do |string|
		string.capitalize! unless little_words.include?(string)
		end
		#Capitalize starting words
		array[0].capitalize!
		#Put in one string
		array.join(" ")
	elsif array.length == 1
		array[0].capitalize!
		array[0]
	end		
end



