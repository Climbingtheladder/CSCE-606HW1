# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum1 = 0
  for i in 0..arr.size - 1
    sum1 += arr.at(i)
  end
  return sum1
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1 
    return arr[0]
  else 
    arr.sort!;
    max = arr[-1] + arr[-2]
    return max
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
hash = Hash.new 
  arr.each do |i|
    if hash.has_key?(n-i)
      return true
    else
      hash[i] = 1
    end 
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0
    return false
  elsif s[0] =~ /[[:alpha:]]/
  	if !["A", "E", "I", "O", "U"].include?(s[0].upcase)
  		return true
  	end
  else
  	return false
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
  	return false
  end
  if !s.count('01') == s.size
  	return false
  end
  n = s.to_i(2)
  if n%4 != 0
  	return false
  end

  return true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn,price)
		if price <= 0 or isbn == ""? 
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end

  def price_as_string
		return "$#{'%.2f' %  @price}"
	end		

end
