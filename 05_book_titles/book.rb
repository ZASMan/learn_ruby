class Book

	attr_accessor :title
	
	#Must capitalize the if it is the first word
	def title
		lowers = %w(a an and but in of the)
		title_array = @title.split
		title_array.each do |word|
			if lowers.include?(title_array[0])
				word.capitalize!
			elsif lowers.include?(word)
				word
			else
				word.capitalize!
			end
		end
		title_array.join(" ")
	end
end

