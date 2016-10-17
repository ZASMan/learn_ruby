#write your code here

def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	sum = 0
	array.each do |i|
		sum += i
	end
	sum
end



def multiply(*args)
	result = 1
	args.each do |arg|
		result = result * arg
	end
	result
end
def power(x, y)
	x ** y
end

#Explanation for Factorial
#while the x is positive
#result becomes result times x
#Decrease th enumber x by one
#Once the number x becomes 0
#The result is equal to the multiplication of all
#numbers from 1 to what n was at the beginning
def factorial(x)
	result = 1
	if x == 0
		1
	else
		while x > 0
			result = result * x
			x -= 1
		end
		result
	end
end
