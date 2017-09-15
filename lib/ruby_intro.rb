# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (arr.empty? && n.zero? && arr.any?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!(s =~ /^[bcdfghjklmnpqrstvwxyz]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false unless /^[01]+$/.match(s) != nil
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :price, :isbn
  
  def isbn= isbn
    if isbn == ''
      raise ArgumentError.new("must have an ISBN number")
    end
    @isbn = isbn
  end
  
  def price= price
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Must have price")
    end
    @price = price
  end
  
  def initialize isbn, price
    self.isbn = isbn
    self.price = price
  end
  
  def price_as_string
    "$" + sprintf("%.2f", @price)
  end
end
