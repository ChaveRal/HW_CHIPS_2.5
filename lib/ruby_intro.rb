# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum

end

def sum_to_n? arr, n
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  /^[^aeiou\W]/i.match?(s)
end

def binary_multiple_of_4?(s)
  /^[01]+$/.match?(s) && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price should be greater than zero' if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % price}"
  end
end
