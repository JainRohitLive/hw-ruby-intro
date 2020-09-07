# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  if arr.length < 2
	  return false
  end
  return !!arr.combination(2).find{|x,y| x+y==n}
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s =~ /\A(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
  if s == "0"
	  return true
  end
  return s =~ /^[10]*00$/
end

# Part 3

class BookInStock

	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn,price)
		if isbn.empty? || price <= 0 
			raise ArgumentError
		end
		@isbn=isbn
		@price=price
	end

	def price_as_string
		format("$%.2f", @price)
	end
	
end