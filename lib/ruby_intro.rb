# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total = total + x
  end
  return total
end

def max_2_sum arr
  total = 0
  count = 0
  max1 = 0
  max2 = 0
  arr.each do |x|
    count += 1
    if count == 1
      max1 = x
    elsif count == 2
      max2 = x
    elsif x > max1
      max1 = x
    elsif x > max2
      max2 = x
    end
  end
  total = max1 + max2
  return total
end

def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  arr.each do |x|
    arr.each do |y|
      if x != y
        if (x+y) == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  # True if starts with consonant
  if /^[a-z]/i.match(s)
    return /^[^aeiou]/i.match(s)
  end
  return false
end

def binary_multiple_of_4? s
  # I need to come with with a regular expression so s is just 0 and 1
  # and ignore empty strings
  if /[^01]/.match(s) or s.empty?
    return false
  end
  count = 0
  total = 0
  until count == s.length do
    place = s[s.length-1-count].to_i
    value = place*(2**count)
    total += value
    count += 1
  end
  mult4 = total % 4
  if mult4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  # Need ISBN and price as attributes
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    end
    if price <=0 
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(x)
    @isbn = x
  end
  def price
    @price
  end
  def price=(x)
    @price = x
  end
  def price_as_string()
    # Do something with @bprice
    # I used sprintf() because I wanted to store a formatted print to a string
    s = sprintf("$%.2f", @price)
  end
end
